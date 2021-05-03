-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u1
-- https://www.phpmyadmin.net/
--
-- Client :  172.20.0.241
-- Généré le :  Lun 03 Mai 2021 à 13:09
-- Version du serveur :  5.5.62-0+deb8u1
-- Version de PHP :  7.0.33-0+deb9u9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ERROR500`
--

-- --------------------------------------------------------

--
-- Structure de la table `categvente`
--

CREATE TABLE `categvente` (
  `code` varchar(5) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categvente`
--

INSERT INTO `categvente` (`code`, `libelle`, `archive`) VALUES
('AUT', 'Vente d\'automnes', NULL),
('Avril', 'Vente avril', NULL),
('bbb', 'ballon', NULL),
('ELVG', 'Vente d\'élevage', NULL),
('ETE', 'Vente d\'été', NULL),
('GRY', 'Test', NULL),
('P', 'Paque', NULL),
('testC', 'testCateg', NULL),
('XFEV', 'Vente mixte de février', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cheval`
--

CREATE TABLE `cheval` (
  `id` int(11) NOT NULL,
  `sire` varchar(15) CHARACTER SET utf8 NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sexe` varchar(1) CHARACTER SET utf8 NOT NULL,
  `idType` int(11) NOT NULL,
  `Père` int(11) NOT NULL,
  `Mère` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cheval`
--

INSERT INTO `cheval` (`id`, `sire`, `nom`, `sexe`, `idType`, `Père`, `Mère`, `idClient`, `photo`, `archive`) VALUES
(1, '0000.000.0000', 'Inconnu', 'M', 455, 0, 0, 0, NULL, NULL),
(2, '0000.000.0000', 'Inconnue', 'F', 455, 0, 0, 0, NULL, NULL),
(3, '4508.000.020Z', 'Petit Canason', 'F', 457, 1, 2, 8, NULL, NULL),
(4, '5878.100.045Z', 'Petite Jument', 'F', 456, 1, 2, 34, NULL, NULL),
(5, '5608.008.020Z', 'Tornadus', 'M', 455, 1, 2, 2, NULL, NULL),
(6, '4508.050.762Z', 'Tornadas', 'F', 455, 1, 2, 9, NULL, NULL),
(7, '4588.500.099Z', 'Petit Tonnerre', 'M', 456, 3, 4, 5, '../vues/images/Petit_Tonnerre.jpg', NULL),
(8, '6328.060.580Z', 'Tornado', 'M', 455, 5, 6, 49, '../vues/images/Tornado.jpg', NULL),
(9, '120001042445Z', 'Cheval buggÃ©', 'M', 457, 8, 4, 52, NULL, NULL),
(10, '87878787Z', 'Cheval', 'M', 456, 8, 4, 14, NULL, NULL),
(11, '1111111111111', 'hubert', 'M', 455, 1, 2, 22, NULL, NULL),
(12, 'tert', 'terte', 'M', 456, 9, 4, 87, NULL, NULL),
(13, '454801000020Z', 'hunter', 'M', 457, 5, 6, 23, NULL, NULL),
(14, 'SSSSSSSSSSSSS', 'UUUUUUUU', 'M', 456, 13, 4, 87, NULL, NULL),
(15, 'CCCCCCCCCCCCC', 'CCCCCCCCCCCCCCC', 'F', 457, 13, 4, 22, NULL, NULL),
(16, 'SSSSSSSSSSSSS', 'THORA', 'M', 457, 11, 2, 71, NULL, NULL),
(17, '74544544454J', 'Jolly Jumper', 'M', 457, 1, 2, 56, NULL, NULL),
(18, 's44545454545c', 'optimus', 'M', 455, 1, 2, 4, NULL, NULL),
(19, '1515151515151', 'Cannabis', 'M', 456, 7, 6, 87, NULL, NULL),
(20, '1616161161616', 'Bouriquet', 'M', 455, 1, 2, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `rue` varchar(60) NOT NULL,
  `copos` varchar(5) NOT NULL,
  `ville` varchar(40) NOT NULL,
  `mail` varchar(60) DEFAULT NULL,
  `codePays` varchar(3) DEFAULT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `rue`, `copos`, `ville`, `mail`, `codePays`, `archive`) VALUES
(1, 'Deltour', 'Charles', '4 rue du Pont', '14680', 'Bretteville Sur Laize', 'cdeltour@hotmail.com', 'FRA', NULL),
(2, 'Fime', 'Nadia', '5 rue du Montparnasse', '14220', 'Boulon', '', 'ENG', NULL),
(3, 'Ertau', 'Frank', '4 Avenue du président Wilson', '14190', 'Urville', 'frank.ertau@laposte.net', 'FRA', NULL),
(4, 'Maneur', 'David', '6 rue Charles Péguy', '14220', 'Mutrécy', '', 'FRA', NULL),
(5, 'Berezovski', 'Sylvie', '18 rue du Château', '14680', 'Barbery', '', 'FRA', NULL),
(6, 'Finley', 'Pascale', '25 rue de Tolbiac', '14680', 'Caillouet', 'pascfinley@yahoo.fr', 'FRA', NULL),
(7, 'Vofur', 'Hector', '18 rue Deparcieux', '14190', 'Cauvicourt', 'hvofur@free.fr', 'ENG', NULL),
(8, 'Derzou', 'Fred', '230 avenue de la libert', '14220', 'Espins', 'ouzala@aol.com', 'FRA', NULL),
(9, 'Serty', 'Julie', '23 rue du Calvaire', '14220', 'Fresney le Vieux', '', 'FRA', NULL),
(10, 'Vofur', 'Victor', '18 rue Deparcieux', '14680', 'Bretteville Sur Laize', 'victor.vofur@laposte.net', 'FRA', NULL),
(11, 'Calende', 'Hugo', '22 rue des jardins', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(12, 'Jemba', 'Hubert', '10 rue du 8 mai 1945', '14680', 'Bretteville Sur Laize', 'jaimeba@yahoo.fr', 'FRA', NULL),
(13, 'Morin', 'S?verine', '4 rue du bac', '93000', 'Paris', 'morinsev@hotmail.com', 'FRA', NULL),
(14, 'Benrech', 'Tarek', '79 rue de Caen', '14320', 'May Sur Orne', '', 'FRA', NULL),
(15, 'Nguyen', 'Marc', '53 impasse Tourneur', '14320', 'Fontenay Le Marmion', 'nguyen774@wanadoo.fr', 'FRA', NULL),
(16, 'Louali', 'Karima', '89 avenue Poincar', '14320', 'Saint Martin de Fontenay', 'kloua@caramail.fr', 'FRA', NULL),
(17, 'Paolo', 'Marco', '14 rue du Caire', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(18, 'Map', 'Joanna', '120 boulevard Voltaire', '75012', 'Paris', '', 'FRA', NULL),
(19, 'Kound', 'Fatoumata', '4 Place Carr', '14190', 'Urville', '', 'FRA', NULL),
(20, 'Derissam', 'Bachir', '1 rue des Indes', '14190', 'Urville', '', 'FRA', NULL),
(21, 'Villechalane', 'Louis', '8 rue des Charmes', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(22, 'Andre', 'David', '1 rue Petit', '14220', 'Boulon', '', 'FRA', NULL),
(23, 'Bedos', 'Christian', '1 rue Peranud', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(24, 'Tusseau', 'Louis', '22 rue des Ternes', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(25, 'Bentot', 'Pascal', '11 allée des Cerises', '14220', 'Boulon', '', 'FRA', NULL),
(26, 'Bioret', 'Luc', '1 Avenue gambetta', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(27, 'Bunisset', 'Francis', '10 rue des Perles', '14220', 'Espins', '', 'FRA', NULL),
(28, 'Bunisset', 'Denise', '23 rue Manin', '14320', 'Saint Martin de Fontenay', '', 'FRA', NULL),
(29, 'Cacheux', 'Bernard', '114 rue Blanche', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(30, 'Cadic', 'Eric', '123 avenue de la République', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(31, 'Charoze', 'Catherine', '100 rue Petit', '14220', 'Boulon', '', 'FRA', NULL),
(32, 'Clepkens', 'Christophe', '12 allée des Anges', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(33, 'Cottin', 'Vincenne', '36 rue Des Roches', '14220', 'Boulon', '', 'FRA', NULL),
(34, 'Daburon', 'François', '13 rue de Chanzy', '14220', 'Mutrécy', '', 'FRA', NULL),
(35, 'De', 'Philippe', '13 rue Barthes', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(36, 'Debelle', 'Michel', '181 avenue Barbusse', '14220', 'Espins', '', 'FRA', NULL),
(37, 'Debelle', 'Jeanne', '134 allée des Joncs', '14320', 'Saint Martin de Fontenay', '', 'FRA', NULL),
(38, 'Debroise', 'Michel', '2 Bld Jourdain', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(39, 'Desmarquest', 'Nathalie', '14 Place d Arc', '14220', 'Boulon', '', 'FRA', NULL),
(40, 'Desnost', 'Pierre', '16 avenue des Cèdres', '14220', 'Mutrécy', '', 'FRA', NULL),
(41, 'Dudouit', 'Frédéric', '18 rue de l église', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(42, 'Duncombe', 'Claude', '19 rue de la tour', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(43, 'Enault-Pascreau', 'Céline', '25 place de la gare', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(44, 'Eynde', 'Valérie', '3 Grand Place', '14220', 'Mutrécy', '', 'FRA', NULL),
(45, 'Finck', 'Jacques', '10 avenue du Prado', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(46, 'Frémont', 'Fernande', '4 route de la mer', '14220', 'Espins', '', 'FRA', NULL),
(47, 'Gest', 'Alain', '30 avenue des terres', '14320', 'Saint Martin de Fontenay', '', 'FRA', NULL),
(48, 'Testemale', 'tarek', 'du trek', '14000', 'Tarascon', NULL, 'FRA', NULL),
(49, 'Trieste', 'Thierry', 'du tertre', '14000', 'Tologne', NULL, 'FRA', NULL),
(50, 'test04sept', 'luc', 'de ahjk', '121', 'jkjklj', NULL, 'FRA', NULL),
(51, 'Caillou', 'Pierre', '14 rue de la pÃ©ridotite', '14000', 'Caen', NULL, 'FRA', NULL),
(52, 'ARTVU', 'NICOLAS', '6 rue des coquelicots', '14000', 'Caen', NULL, 'FRA', NULL),
(53, 'Leduc', 'Georges', '5 rue du berger', '14000', 'Caen', NULL, 'FRA', NULL),
(54, 'Leduc', 'Georges', '5 rue du berger', '14000', 'Caen', NULL, 'FRA', NULL),
(55, 'Leduc', 'Georges', '5 rue du berger', '14000', 'Caen', NULL, 'FRA', NULL),
(56, 'Dalton', 'JOE', 'rue du far west', '14000', 'Caen', NULL, 'FRA', NULL),
(57, 'TEST', 'PRENOM', 'RUE', '14000', 'Caen', NULL, 'FRA', NULL),
(58, 'TEST', 'PRENOM', 'RUE', 'CP', 'CAEN', NULL, 'FRA', NULL),
(59, 'test', 'albert', '14 rue caen', '14000', 'caen', NULL, 'FRA', NULL),
(60, 'legeard', 'hugo', '25 rue de la mer', '14000', 'Caen', NULL, 'FRA', NULL),
(61, 'BrÃ©bion', 'Thibault', '4 rue Louise Michel', '14160', 'Dives sur mer', NULL, 'FRA', NULL),
(62, 'MOREL', 'ALEXIS', 'test', '14000', 'Caen', NULL, NULL, NULL),
(63, 'PROVOST', 'ROMAIN', 'TEST', '14000', 'Caen', NULL, NULL, NULL),
(64, 'PROVOST', 'ROMAIN', 'TEST', '14000', 'Caen', NULL, NULL, NULL),
(65, 'PROVOST', 'ROMAIN', 'TEST', '14000', 'Caen', NULL, NULL, NULL),
(66, 'PROVOST', 'ROMAIN', 'TEST', '14000', 'Caen', NULL, NULL, NULL),
(67, 'PROVO', 'ROMAIN', 'TEST', '14000', 'Caen', NULL, NULL, NULL),
(68, 'PROVO', 'ROMAIN', 'TEST', '14000', 'Caen', NULL, NULL, NULL),
(69, 'TEST', 'johnny', '45 rue caen', '14000', 'Caen', NULL, NULL, NULL),
(70, 'TEST', 'johnny', '45 rue caen', '14000', 'Caen', NULL, NULL, NULL),
(71, 'Aubris', 'Leo', '4 rue Louis Amstrong', '14000', 'Caen', 'leo.aubris@gmail.com', 'BEL', NULL),
(72, 'TEST', 'johnny', '45 rue caen', '14000', 'Caen', NULL, NULL, NULL),
(73, 'TEST', 'johnny', '45 rue caen', '14000', 'Caen', NULL, NULL, NULL),
(74, 'TEST', 'johnny', '45 rue caen', '14000', 'Caen', NULL, NULL, NULL),
(75, 'chauvin', 'TOM', 'test', '14000', 'Caen', NULL, NULL, NULL),
(86, 'TEST', 'jon', 'ifs', '14000', 'Caen', NULL, NULL, NULL),
(87, 'Aubris', 'Leo', '4 rue Louis Amstrong', '14000', 'Caen', 'leo.aubris@gmail.com', 'BEL', NULL),
(88, 'ClÃ©ment', 'Hugo', '4 rue Louis Amstrong', '14000', 'Caen', 'leo.aubris@gmail.com', 'BEL', NULL),
(92, 'client', 'client', 'client', '14000', 'Caen', NULL, NULL, NULL),
(93, 'client', 'client', 'client', '14000', 'Caen', NULL, NULL, NULL),
(94, 'client', 'client', 'client', '14000', 'Caen', NULL, NULL, NULL),
(95, 'client', 'client', 'client', '14000', 'Caen', NULL, NULL, NULL),
(96, 'MOREL', 'Alexis', 'test', '14000', 'Caen', NULL, 'FRA', NULL),
(97, 'PROVOST', 'ROMAIN', '14 rue oracle', '14000', 'Caen', NULL, 'BEL', NULL),
(98, 'PROVOST', 'ROMAIN', '14 rue oracle', '14000', 'Caen', NULL, 'BEL', NULL),
(99, 'TEST', 'Bruce', 'rue', 'code', 'Buenos aires', NULL, 'ARG', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `clientcategvente`
--

CREATE TABLE `clientcategvente` (
  `codeClient` int(11) NOT NULL,
  `codeCategVente` varchar(5) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clientcategvente`
--

INSERT INTO `clientcategvente` (`codeClient`, `codeCategVente`, `archive`) VALUES
(1, 'ELVG', NULL),
(1, 'ETE', NULL),
(3, 'ETE', NULL),
(6, 'AUT', NULL),
(6, 'ETE', NULL),
(6, 'XFEV', NULL),
(7, 'ETE', NULL),
(16, 'ETE', NULL),
(49, 'AUT', NULL),
(49, 'ETE', NULL),
(50, 'ETE', NULL),
(51, 'XFEV', NULL),
(52, 'Avril', NULL),
(53, 'Avril', NULL),
(53, 'ELVG', NULL),
(53, 'ETE', NULL),
(54, 'AUT', NULL),
(54, 'Avril', NULL),
(54, 'ELVG', NULL),
(54, 'ETE', NULL),
(54, 'XFEV', NULL),
(55, 'AUT', NULL),
(55, 'Avril', NULL),
(55, 'ELVG', NULL),
(55, 'ETE', NULL),
(55, 'XFEV', NULL),
(56, 'Avril', NULL),
(57, 'Avril', NULL),
(58, 'ELVG', NULL),
(59, 'AUT', NULL),
(60, 'Avril', NULL),
(61, 'ELVG', NULL),
(62, 'ETE', NULL),
(63, 'ETE', NULL),
(64, 'ETE', NULL),
(65, 'ETE', NULL),
(66, 'ETE', NULL),
(67, 'ETE', NULL),
(68, 'ETE', NULL),
(69, 'bbb', NULL),
(69, 'ELVG', NULL),
(69, 'ETE', NULL),
(70, 'bbb', NULL),
(70, 'ELVG', NULL),
(70, 'ETE', NULL),
(71, 'AUT', NULL),
(71, 'Avril', NULL),
(71, 'ETE', NULL),
(72, 'bbb', NULL),
(72, 'ELVG', NULL),
(72, 'ETE', NULL),
(73, 'bbb', NULL),
(73, 'ELVG', NULL),
(73, 'ETE', NULL),
(74, 'bbb', NULL),
(74, 'ELVG', NULL),
(74, 'ETE', NULL),
(75, 'ELVG', NULL),
(86, 'bbb', NULL),
(87, 'AUT', NULL),
(87, 'Avril', NULL),
(87, 'ETE', NULL),
(88, 'AUT', NULL),
(92, 'ELVG', NULL),
(93, 'ELVG', NULL),
(94, 'ELVG', NULL),
(95, 'ELVG', NULL),
(96, 'AUT', NULL),
(97, 'AUT', NULL),
(98, 'AUT', NULL),
(99, 'ELVG', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`id`, `login`, `mdp`) VALUES
(1, 'admin', 'mpadmin');

-- --------------------------------------------------------

--
-- Structure de la table `courriel`
--

CREATE TABLE `courriel` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `objet` varchar(50) NOT NULL,
  `corps` varchar(250) NOT NULL,
  `codeVente` int(11) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `courriel`
--

INSERT INTO `courriel` (`id`, `date`, `objet`, `corps`, `codeVente`, `archive`) VALUES
(1, '2020-09-17', 'Confirmation participation à la vente 425', 'Nous vous contactons pour confirmer votre participation à la vent 425', 425, NULL),
(2, '2020-11-13', 'Confirmation participation à la vente 426', 'Nous vous contactons pour confirmer votre participation à la vent 426', 426, NULL),
(3, '2020-11-20', 'Confirmation participation à la vente 427', 'Nous vous contactons pour confirmer votre participation à la vent 427', 427, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `courrielpiecejointe`
--

CREATE TABLE `courrielpiecejointe` (
  `codeCourriel` int(11) NOT NULL,
  `codePieceJointe` int(11) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `courrielpiecejointe`
--

INSERT INTO `courrielpiecejointe` (`codeCourriel`, `codePieceJointe`, `archive`) VALUES
(1, 10, NULL),
(2, 20, NULL),
(3, 30, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `id` int(11) NOT NULL,
  `ville` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nbBoxes` int(12) NOT NULL,
  `commentaire` varchar(500) CHARACTER SET latin1 NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`id`, `ville`, `nbBoxes`, `commentaire`, `archive`) VALUES
(100, 'Houlgate', 50, 'Lieu cotier agrÃ©able en saison', 1),
(111, 'AlenÃ?Â§on', 90, 'Prefecture de l\'orne', 1),
(125, 'VIRE', 14000, 'ville calvados', 1),
(129, 'CONDE', 50, 'PETITE VILLE', 1),
(200, 'brest', 50, 'jolie ville', 1),
(400, 'Cabourg', 18, 'Ville proche de la mer c\'est cool', 1),
(450, 'TEST', 78, 'TEST', 1),
(500, 'flers', 40, 'orne', 1),
(501, 'Caen', 15, 'Ville sympathique avec beaucoup de gens.', 1),
(502, 'Potigny', 305, 'Ã?norme ville possÃ©dant un Ã©norme stade de foot.', 0),
(503, 'Falaise', 8, 'Superbe ville avec un chÃ¢teau.', 1),
(507, 'Bagnoole de L\'orne', 50, 'ville connue pour ses cures', 0),
(508, 'Bagnoole de L\'orne', 50, 'ville connue pour ses cures', 0),
(563, 'Dives-sur-mer', 18, 'Cadre marin idÃ©al pour galoper sur la plage.', 1),
(565, 'Rennes', 45, 'ville bretagne', 0);

-- --------------------------------------------------------

--
-- Structure de la table `lot`
--

CREATE TABLE `lot` (
  `id` int(11) NOT NULL,
  `prixDepart` varchar(50) NOT NULL,
  `codeVente` int(11) NOT NULL,
  `idcheval` int(11) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lot`
--

INSERT INTO `lot` (`id`, `prixDepart`, `codeVente`, `idcheval`, `archive`) VALUES
(1001, '45000€', 425, 7, NULL),
(1002, '145000€', 427, 8, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `code` varchar(3) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`code`, `nom`, `archive`) VALUES
('ALL', 'Allemagne', NULL),
('ARG', 'Argentine', NULL),
('BEL', 'Belgique', NULL),
('BRE', 'BrÃ©sil', NULL),
('CHI', 'Chine', NULL),
('ENG', 'English', NULL),
('ESP', 'Espagnes', NULL),
('EST', 'Estonie', NULL),
('fin', 'finlande', NULL),
('FRA', 'France', NULL),
('JAP', 'Japon', NULL),
('MDG', 'Madagascar', NULL),
('MOL', 'Moldavie', NULL),
('MON', 'Mongolie', NULL),
('POL', 'Pologne', NULL),
('POR', 'Portugal', NULL),
('RUS', 'Russie', NULL),
('SUI', 'Suisse', NULL),
('URU', 'Uruguay', NULL),
('USA', 'Etats Unis', NULL),
('ZIM', 'Zimbaboue', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

CREATE TABLE `permission` (
  `code` varchar(3) NOT NULL,
  `nom` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `permission`
--

INSERT INTO `permission` (`code`, `nom`) VALUES
('SEL', 'Select'),
('UPD', 'Update'),
('CRE', 'Create'),
('DEL', 'Delete');

-- --------------------------------------------------------

--
-- Structure de la table `piece_jointe`
--

CREATE TABLE `piece_jointe` (
  `id` int(11) NOT NULL,
  `chemin` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `piece_jointe`
--

INSERT INTO `piece_jointe` (`id`, `chemin`, `description`, `archive`) VALUES
(10, 'C://Formulaire/425', 'Formulaire de validation pour la vente 425', NULL),
(20, 'C://Formulaire/426', 'Formulaire de validation pour la vente 426', NULL),
(30, 'C://Formulaire/427', 'Formulaire de validation pour la vente 427', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `code` varchar(3) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `typecheval`
--

CREATE TABLE `typecheval` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `typecheval`
--

INSERT INTO `typecheval` (`id`, `libelle`, `description`, `archive`) VALUES
(455, 'Pure sang anglais', 'Un cheval qui à ses parents anglais', NULL),
(456, 'Pure sang Vietnamo-Moldave', 'Un cheval qui à ses parents Vietnamo-Moldavien', NULL),
(457, 'Pure sang français', 'Un cheval qui à ses parents français', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `id` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `dateDebut` date NOT NULL,
  `codeCategVente` varchar(5) NOT NULL,
  `CodeLieu` int(11) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vente`
--

INSERT INTO `vente` (`id`, `nom`, `dateDebut`, `codeCategVente`, `CodeLieu`, `archive`) VALUES
(425, 'vente de super chevaux', '2020-07-17', 'ELVG', 502, NULL),
(426, 'vente hiver', '2020-12-21', 'XFEV', 503, NULL),
(427, 'vente automne', '2020-10-21', 'AUT', 501, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ventetypecheval`
--

CREATE TABLE `ventetypecheval` (
  `idvente` int(11) NOT NULL,
  `idtypecheval` int(11) NOT NULL,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ventetypecheval`
--

INSERT INTO `ventetypecheval` (`idvente`, `idtypecheval`, `archive`) VALUES
(425, 456, NULL),
(426, 455, NULL),
(427, 457, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categvente`
--
ALTER TABLE `categvente`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `cheval`
--
ALTER TABLE `cheval`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idType` (`idType`),
  ADD KEY `Père` (`Père`),
  ADD KEY `Mère` (`Mère`),
  ADD KEY `idClient` (`idClient`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cli_pays` (`codePays`);

--
-- Index pour la table `clientcategvente`
--
ALTER TABLE `clientcategvente`
  ADD PRIMARY KEY (`codeClient`,`codeCategVente`),
  ADD KEY `FK_cliCat_Categ` (`codeCategVente`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `courriel`
--
ALTER TABLE `courriel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codeVente` (`codeVente`);

--
-- Index pour la table `courrielpiecejointe`
--
ALTER TABLE `courrielpiecejointe`
  ADD PRIMARY KEY (`codeCourriel`,`codePieceJointe`),
  ADD KEY `codeCourriel` (`codeCourriel`,`codePieceJointe`),
  ADD KEY `codePieceJointe` (`codePieceJointe`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lot`
--
ALTER TABLE `lot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCheval` (`codeVente`),
  ADD KEY `idcheval_2` (`idcheval`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `piece_jointe`
--
ALTER TABLE `piece_jointe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typecheval`
--
ALTER TABLE `typecheval`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codeCategVente` (`codeCategVente`),
  ADD KEY `CodeLieu` (`CodeLieu`);

--
-- Index pour la table `ventetypecheval`
--
ALTER TABLE `ventetypecheval`
  ADD PRIMARY KEY (`idvente`,`idtypecheval`),
  ADD KEY `idvente` (`idvente`,`idtypecheval`),
  ADD KEY `idtypecheval` (`idtypecheval`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cheval`
--
ALTER TABLE `cheval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cheval`
--
ALTER TABLE `cheval`
  ADD CONSTRAINT `cheval_ibfk_10` FOREIGN KEY (`idType`) REFERENCES `typecheval` (`id`),
  ADD CONSTRAINT `cheval_ibfk_11` FOREIGN KEY (`Père`) REFERENCES `cheval` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cheval_ibfk_12` FOREIGN KEY (`Mère`) REFERENCES `cheval` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cheval_ibfk_7` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_cli_pays` FOREIGN KEY (`codePays`) REFERENCES `pays` (`code`);

--
-- Contraintes pour la table `clientcategvente`
--
ALTER TABLE `clientcategvente`
  ADD CONSTRAINT `FK_cliCat_Categ` FOREIGN KEY (`codeCategVente`) REFERENCES `categvente` (`code`),
  ADD CONSTRAINT `FK_cliCat_client` FOREIGN KEY (`codeClient`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `courriel`
--
ALTER TABLE `courriel`
  ADD CONSTRAINT `courriel_ibfk_1` FOREIGN KEY (`codeVente`) REFERENCES `vente` (`id`);

--
-- Contraintes pour la table `courrielpiecejointe`
--
ALTER TABLE `courrielpiecejointe`
  ADD CONSTRAINT `courrielpiecejointe_ibfk_1` FOREIGN KEY (`codeCourriel`) REFERENCES `courriel` (`id`),
  ADD CONSTRAINT `courrielpiecejointe_ibfk_2` FOREIGN KEY (`codePieceJointe`) REFERENCES `piece_jointe` (`id`);

--
-- Contraintes pour la table `lot`
--
ALTER TABLE `lot`
  ADD CONSTRAINT `lot_ibfk_2` FOREIGN KEY (`codeVente`) REFERENCES `vente` (`id`),
  ADD CONSTRAINT `lot_ibfk_3` FOREIGN KEY (`idcheval`) REFERENCES `cheval` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `FK_Ven_Categ` FOREIGN KEY (`codeCategVente`) REFERENCES `categvente` (`code`),
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`CodeLieu`) REFERENCES `lieu` (`id`);

--
-- Contraintes pour la table `ventetypecheval`
--
ALTER TABLE `ventetypecheval`
  ADD CONSTRAINT `ventetypecheval_ibfk_1` FOREIGN KEY (`idvente`) REFERENCES `vente` (`id`),
  ADD CONSTRAINT `ventetypecheval_ibfk_2` FOREIGN KEY (`idtypecheval`) REFERENCES `typecheval` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
