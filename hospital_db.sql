-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2026 at 12:55 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `patient_id`, `room_id`, `admission_date`, `discharge_date`, `reason`) VALUES
(1, 2, 3, '2024-01-10', '2024-01-15', 'Douleurs thoraciques'),
(2, 4, 5, '2024-01-12', '2024-01-18', 'Fracture du fémur'),
(3, 6, 7, '2024-01-15', '2024-01-22', 'Pneumonie aiguë'),
(4, 8, 9, '2024-01-18', '2024-01-25', 'Appendicite'),
(5, 10, 11, '2024-01-20', '2024-01-28', 'AVC ischémique'),
(6, 12, 13, '2024-01-22', '2024-01-29', 'Crise cardiaque'),
(7, 14, 15, '2024-01-25', '2024-02-01', 'Chirurgie du genou'),
(8, 16, 17, '2024-01-28', '2024-02-03', 'Bronchite sévère'),
(9, 18, 19, '2024-02-01', '2024-02-08', 'Migraine chronique'),
(10, 20, 21, '2024-02-03', '2024-02-10', 'Dépression sévère'),
(11, 22, 23, '2024-02-05', '2024-02-12', 'Intoxication alimentaire'),
(12, 24, 25, '2024-02-08', '2024-02-14', 'Insuffisance rénale'),
(13, 26, 27, '2024-02-10', '2024-02-17', 'Leucémie'),
(14, 28, 29, '2024-02-12', '2024-02-19', 'Hernie discale'),
(15, 30, 31, '2024-02-15', '2024-02-22', 'Cataracte'),
(16, 32, 33, '2024-02-18', '2024-02-25', 'Infection urinaire'),
(17, 34, 35, '2024-02-20', '2024-02-27', 'Calculs rénaux'),
(18, 36, 37, '2024-02-22', '2024-02-29', 'Diabète décompensé'),
(19, 38, 39, '2024-02-25', '2024-03-03', 'Arthrite rhumatoïde'),
(20, 40, 41, '2024-02-28', '2024-03-06', 'Insomnie sévère'),
(21, 42, 43, '2024-03-01', '2024-03-08', 'Allergie grave'),
(22, 44, 45, '2024-03-03', '2024-03-10', 'Hépatite'),
(23, 46, 47, '2024-03-05', '2024-03-12', 'Tuberculose'),
(24, 48, 49, '2024-03-08', '2024-03-15', 'Maladie de Crohn'),
(25, 50, 51, '2024-03-10', '2024-03-17', 'Anémie sévère'),
(26, 52, 53, '2024-03-12', '2024-03-19', 'Pancréatite aiguë'),
(27, 54, 55, '2024-03-15', '2024-03-22', 'Méningite'),
(28, 56, 57, '2024-03-18', '2024-03-25', 'Embolie pulmonaire'),
(29, 58, 59, '2024-03-20', '2024-03-27', 'Thyroïdite'),
(30, 60, 61, '2024-03-22', '2024-03-29', 'Fracture du poignet');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `location`) VALUES
(1, 'Cardiologie', 'Bâtiment A, 3ème étage'),
(3, 'Pédiatrie', 'Bâtiment B, 1er étage'),
(5, 'Neurologie', 'Bâtiment C, 2ème étage'),
(7, 'Orthopédie', 'Bâtiment A, 1er étage'),
(9, 'Gynécologie', 'Bâtiment B, 3ème étage'),
(11, 'Urgences', 'Bâtiment Principal, Rez-de-chaussée'),
(13, 'Radiologie', 'Bâtiment C, Rez-de-chaussée'),
(15, 'Oncologie', 'Bâtiment D, 2ème étage'),
(17, 'Dermatologie', 'Bâtiment E, 1er étage'),
(19, 'Ophtalmologie', 'Bâtiment F, 2ème étage'),
(21, 'Psychiatrie', 'Bâtiment G, 3ème étage'),
(23, 'Pneumologie', 'Bâtiment A, 2ème étage'),
(25, 'Gastro-entérologie', 'Bâtiment B, 2ème étage'),
(27, 'Néphrologie', 'Bâtiment C, 3ème étage'),
(29, 'Rhumatologie', 'Bâtiment D, 1er étage'),
(31, 'Hématologie', 'Bâtiment E, 2ème étage'),
(33, 'Endocrinologie', 'Bâtiment F, 1er étage'),
(35, 'Urologie', 'Bâtiment G, 2ème étage'),
(37, 'ORL', 'Bâtiment A, 4ème étage'),
(39, 'Chirurgie Générale', 'Bâtiment B, 4ème étage'),
(41, 'Anesthésiologie', 'Bâtiment C, 1er étage'),
(43, 'Réanimation', 'Bâtiment D, 3ème étage'),
(45, 'Médecine Interne', 'Bâtiment E, 3ème étage'),
(47, 'Gériatrie', 'Bâtiment F, 4ème étage'),
(49, 'Médecine Sportive', 'Bâtiment G, 1er étage'),
(51, 'Nutrition', 'Bâtiment A, 5ème étage'),
(53, 'Médecine Palliative', 'Bâtiment B, 5ème étage'),
(55, 'Infectiologie', 'Bâtiment C, 4ème étage'),
(57, 'Médecine Vasculaire', 'Bâtiment D, 2ème étage'),
(59, 'Médecine Nucléaire', 'Bâtiment E, 4ème étage');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `specialty` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `first_name`, `last_name`, `specialty`, `phone`, `email`, `department_id`) VALUES
(1, 'Philippe', 'Lambert', 'Cardiologue', '0611122233', 'philippe.lambert@hopital.fr', 1),
(3, 'Catherine', 'Faure', 'Pédiatre', '0622233344', 'catherine.faure@hopital.fr', 3),
(5, 'Michel', 'Girard', 'Neurologue', '0633344455', 'michel.girard@hopital.fr', 5),
(7, 'Isabelle', 'Rousseau', 'Orthopédiste', '0644455566', 'isabelle.rousseau@hopital.fr', 7),
(9, 'François', 'Blanchard', 'Gynécologue', '0655566677', 'francois.blanchard@hopital.fr', 9),
(11, 'Nathalie', 'Guerin', 'Urgentiste', '0666677788', 'nathalie.guerin@hopital.fr', 11),
(13, 'Stéphane', 'Perrin', 'Radiologue', '0677788899', 'stephane.perrin@hopital.fr', 13),
(15, 'Valérie', 'Morin', 'Oncologue', '0688899900', 'valerie.morin@hopital.fr', 15),
(17, 'Christophe', 'Gautier', 'Dermatologue', '0699900011', 'christophe.gautier@hopital.fr', 17),
(19, 'Sylvie', 'Chevalier', 'Ophtalmologue', '0600011122', 'sylvie.chevalier@hopital.fr', 19),
(21, 'Pascal', 'Renard', 'Psychiatre', '0611122234', 'pascal.renard@hopital.fr', 21),
(23, 'Anne', 'Legrand', 'Pneumologue', '0622233345', 'anne.legrand@hopital.fr', 23),
(25, 'Bernard', 'Clement', 'Gastro-entérologue', '0633344456', 'bernard.clement@hopital.fr', 25),
(27, 'Marie', 'Henry', 'Néphrologue', '0644455567', 'marie.henry@hopital.fr', 27),
(29, 'Laurent', 'Robin', 'Rhumatologue', '0655566678', 'laurent.robin@hopital.fr', 29),
(31, 'Isabelle', 'Leroy', 'Hématologue', '0666677789', 'isabelle.leroy@hopital.fr', 31),
(33, 'Jean-Michel', 'Noel', 'Endocrinologue', '0677788890', 'jean-michel.noel@hopital.fr', 33),
(35, 'Sophie', 'Lemaire', 'Urologue', '0688899901', 'sophie.lemaire@hopital.fr', 35),
(37, 'Eric', 'Marchand', 'ORL', '0699900012', 'eric.marchand@hopital.fr', 37),
(39, 'Caroline', 'Moreno', 'Chirurgien', '0600011123', 'caroline.moreno@hopital.fr', 39),
(41, 'Dominique', 'Masson', 'Anesthésiste', '0611122235', 'dominique.masson@hopital.fr', 41),
(43, 'Véronique', 'Adam', 'Réanimateur', '0622233346', 'veronique.adam@hopital.fr', 43),
(45, 'Serge', 'Muller', 'Médecin Interne', '0633344457', 'serge.muller@hopital.fr', 45),
(47, 'Brigitte', 'Guerin', 'Gériatre', '0644455568', 'brigitte.guerin@hopital.fr', 47),
(49, 'Alain', 'Prevost', 'Médecine Sportive', '0655566679', 'alain.prevost@hopital.fr', 49),
(51, 'Christine', 'Jourdan', 'Nutritionniste', '0666677780', 'christine.jourdan@hopital.fr', 51),
(53, 'Georges', 'Brun', 'Médecine Palliative', '0677788891', 'georges.brun@hopital.fr', 53),
(55, 'Martine', 'Vidal', 'Infectiologue', '0688899902', 'martine.vidal@hopital.fr', 55),
(57, 'Thierry', 'Barbier', 'Médecine Vasculaire', '0699900013', 'thierry.barbier@hopital.fr', 57),
(59, 'Corinne', 'Fouquet', 'Médecine Nucléaire', '0600011124', 'corinne.fouquet@hopital.fr', 59);

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` int NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`id`, `first_name`, `last_name`, `phone`, `department_id`) VALUES
(2, 'Sandrine', 'Lefevre', '0623456789', 1),
(4, 'Pascal', 'Marty', '0634567890', 3),
(6, 'Isabelle', 'Prevost', '0645678901', 5),
(8, 'Nicolas', 'Lemoine', '0656789012', 7),
(10, 'Valérie', 'Bourgeois', '0667890123', 9),
(12, 'David', 'Moulin', '0678901234', 11),
(14, 'Laurence', 'Delacroix', '0689012345', 13),
(16, 'Frédéric', 'Legros', '0690123456', 15),
(18, 'Céline', 'Berger', '0601234567', 17),
(20, 'Olivier', 'Garnier', '0612345678', 19),
(22, 'Audrey', 'Moulin', '0623456780', 21),
(24, 'Jérôme', 'Pierre', '0634567891', 23),
(26, 'Karine', 'Garcia', '0645678902', 25),
(28, 'Sébastien', 'Leroux', '0656789013', 27),
(30, 'Muriel', 'Renault', '0667890124', 29),
(32, 'Alexandre', 'Chevallier', '0678901235', 31),
(34, 'Elise', 'François', '0689012346', 33),
(36, 'Romain', 'Boucher', '0690123457', 35),
(38, 'Hélène', 'Leclerc', '0601234568', 37),
(40, 'Guillaume', 'Renaud', '0612345679', 39),
(42, 'Magali', 'Rolland', '0623456781', 41),
(44, 'Thibault', 'Marin', '0634567892', 43),
(46, 'Virginie', 'Andre', '0645678903', 45),
(48, 'Adrien', 'Perez', '0656789014', 47),
(50, 'Aurélie', 'Schmitt', '0667890125', 49),
(52, 'Benoît', 'Colin', '0678901236', 51),
(54, 'Sabrina', 'Caron', '0689012347', 53),
(56, 'Damien', 'Gauthier', '0690123458', 55),
(58, 'Coralie', 'Maillard', '0601234569', 57),
(60, 'Jordan', 'Huet', '0612345670', 59);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `blood_type` varchar(10) DEFAULT NULL,
  `emergency_contact` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `phone`, `email`, `address`, `blood_type`, `emergency_contact`) VALUES
(2, 'Jean', 'Dupont', 'M', '1985-03-15', '0612345678', 'jean.dupont@email.com', '12 Rue de Paris, 75001 Paris', 'A+', 'Marie Dupont: 0623456789'),
(4, 'Sophie', 'Martin', 'F', '1990-07-22', '0623456789', 'sophie.martin@email.com', '25 Rue de Lyon, 69001 Lyon', 'O-', 'Pierre Martin: 0634567890'),
(6, 'Lucas', 'Bernard', 'M', '1978-11-02', '0634567890', 'lucas.bernard@email.com', '8 Avenue des Fleurs, 13001 Marseille', 'B+', 'Claire Bernard: 0645678901'),
(8, 'Emma', 'Petit', 'F', '2005-01-30', '0645678901', 'emma.petit@email.com', '3 Rue Victor Hugo, 31000 Toulouse', 'AB+', 'Nicolas Petit: 0656789012'),
(10, 'Thomas', 'Robert', 'M', '1995-09-18', '0656789012', 'thomas.robert@email.com', '15 Boulevard Saint-Germain, 75005 Paris', 'A-', 'Julie Robert: 0667890123'),
(12, 'Julie', 'Richard', 'F', '1982-12-05', '0667890123', 'julie.richard@email.com', '42 Rue Nationale, 59000 Lille', 'O+', 'Paul Richard: 0678901234'),
(14, 'Nicolas', 'Durand', 'M', '1975-06-25', '0678901234', 'nicolas.durand@email.com', '7 Place de la République, 67000 Strasbourg', 'B-', 'Isabelle Durand: 0689012345'),
(16, 'Camille', 'Dubois', 'F', '2000-04-12', '0689012345', 'camille.dubois@email.com', '18 Rue de la Gare, 44000 Nantes', 'AB-', 'Antoine Dubois: 0690123456'),
(18, 'Hugo', 'Moreau', 'M', '1988-08-20', '0690123456', 'hugo.moreau@email.com', '9 Cours Mirabeau, 13100 Aix-en-Provence', 'A+', 'Laura Moreau: 0601234567'),
(20, 'Chloé', 'Laurent', 'F', '1993-02-14', '0601234567', 'chloe.laurent@email.com', '33 Rue de la Paix, 51100 Reims', 'O-', 'David Laurent: 0612345670'),
(22, 'Maxime', 'Simon', 'M', '1970-10-09', '0612345670', 'maxime.simon@email.com', '5 Rue Victor Hugo, 69003 Lyon', 'B+', 'Anne Simon: 0623456781'),
(24, 'Léa', 'Michel', 'F', '2008-05-17', '0623456781', 'lea.michel@email.com', '22 Avenue Jean Jaurès, 13008 Marseille', 'A-', 'François Michel: 0634567892'),
(26, 'Arthur', 'Lefebvre', 'M', '1998-11-28', '0634567892', 'arthur.lefebvre@email.com', '14 Rue de Bordeaux, 33000 Bordeaux', 'O+', 'Sophie Lefebvre: 0645678903'),
(28, 'Manon', 'Garcia', 'F', '1987-03-10', '0645678903', 'manon.garcia@email.com', '6 Rue de la Liberté, 29200 Brest', 'AB+', 'Marc Garcia: 0656789014'),
(30, 'Louis', 'David', 'M', '1992-07-19', '0656789014', 'louis.david@email.com', '27 Rue des Lilas, 76100 Rouen', 'B-', 'Céline David: 0667890125'),
(32, 'Inès', 'Bertrand', 'F', '2002-12-24', '0667890125', 'ines.bertrand@email.com', '11 Place de la Mairie, 86000 Poitiers', 'A+', 'Jérôme Bertrand: 0678901236'),
(34, 'Raphaël', 'Roux', 'M', '1980-04-05', '0678901236', 'raphael.roux@email.com', '39 Rue Gambetta, 21000 Dijon', 'O-', 'Valérie Roux: 0689012347'),
(36, 'Clara', 'Vincent', 'F', '1996-09-13', '0689012347', 'clara.vincent@email.com', '17 Boulevard de la Mer, 83000 Toulon', 'B+', 'Alexandre Vincent: 0690123458'),
(38, 'Paul', 'Fournier', 'M', '1973-01-28', '0690123458', 'paul.fournier@email.com', '44 Rue des Écoles, 72000 Le Mans', 'AB-', 'Nathalie Fournier: 0601234569'),
(40, 'Alice', 'Morel', 'F', '2003-06-08', '0601234569', 'alice.morel@email.com', '2 Rue du Château, 35000 Rennes', 'A-', 'Philippe Morel: 0612345670'),
(42, 'Baptiste', 'André', 'M', '1989-10-30', '0612345671', 'baptiste.andre@email.com', '19 Rue Voltaire, 57000 Metz', 'O+', 'Caroline André: 0623456782'),
(44, 'Elodie', 'Mercier', 'F', '1999-03-17', '0623456782', 'elodie.mercier@email.com', '31 Rue du Général de Gaulle, 68000 Colmar', 'B-', 'Laurent Mercier: 0634567893'),
(46, 'Mathis', 'Blanc', 'M', '2010-07-21', '0634567893', 'mathis.blanc@email.com', '23 Rue de Verdun, 94000 Créteil', 'A+', 'Sandrine Blanc: 0645678904'),
(48, 'Louise', 'Garnier', 'F', '1991-05-12', '0645678904', 'louise.garnier@email.com', '1 Rue Pasteur, 78100 Saint-Germain-en-Laye', 'O-', 'Thierry Garnier: 0656789015'),
(50, 'Gabriel', 'Moulin', 'M', '1986-11-03', '0656789015', 'gabriel.moulin@email.com', '36 Rue de la Poste, 76600 Le Havre', 'AB+', 'Virginie Moulin: 0667890126'),
(52, 'Sarah', 'Lemoine', 'F', '2007-02-22', '0667890126', 'sarah.lemoine@email.com', '4 Rue des Vosges, 88100 Saint-Dié', 'B+', 'Stéphane Lemoine: 0678901237'),
(54, 'Enzo', 'Renaud', 'M', '1997-08-14', '0678901237', 'enzo.renaud@email.com', '13 Rue Jean Moulin, 77000 Melun', 'A-', 'Delphine Renaud: 0689012348'),
(56, 'Juliette', 'Roy', 'F', '1983-12-01', '0689012348', 'juliette.roy@email.com', '29 Rue de la Ferme, 95100 Argenteuil', 'O+', 'Christophe Roy: 0690123459'),
(58, 'Nathan', 'Legrand', 'M', '2009-09-26', '0690123459', 'nathan.legrand@email.com', '16 Rue du Moulin, 80000 Amiens', 'AB-', 'Emilie Legrand: 0601234570'),
(60, 'Lola', 'Langlois', 'F', '1994-04-18', '0601234570', 'lola.langlois@email.com', '34 Rue des Tilleuls, 28000 Chartres', 'B-', 'Frédéric Langlois: 0612345672');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `room_number` varchar(20) DEFAULT NULL,
  `room_type` varchar(50) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `room_type`, `capacity`, `department_id`) VALUES
(3, 'A101', 'Standard', 2, 1),
(5, 'A102', 'VIP', 1, 1),
(7, 'B201', 'Standard', 2, 3),
(9, 'B202', 'Standard', 3, 3),
(11, 'C301', 'Intensive Care', 1, 5),
(13, 'C302', 'Standard', 2, 5),
(15, 'D401', 'VIP', 1, 7),
(17, 'D402', 'Standard', 2, 7),
(19, 'E501', 'Standard', 2, 9),
(21, 'E502', 'Standard', 3, 9),
(23, 'F601', 'Isolation', 1, 11),
(25, 'F602', 'Standard', 2, 11),
(27, 'G701', 'VIP', 1, 13),
(29, 'G702', 'Standard', 2, 13),
(31, 'H801', 'Standard', 2, 15),
(33, 'H802', 'Standard', 3, 15),
(35, 'I901', 'Intensive Care', 1, 17),
(37, 'I902', 'Standard', 2, 17),
(39, 'J1001', 'VIP', 1, 19),
(41, 'J1002', 'Standard', 2, 19),
(43, 'K1101', 'Standard', 2, 21),
(45, 'K1102', 'Standard', 3, 21),
(47, 'L1201', 'Isolation', 1, 23),
(49, 'L1202', 'Standard', 2, 23),
(51, 'M1301', 'VIP', 1, 25),
(53, 'M1302', 'Standard', 2, 25),
(55, 'N1401', 'Standard', 2, 27),
(57, 'N1402', 'Intensive Care', 1, 27),
(59, 'O1501', 'Standard', 2, 29),
(61, 'O1502', 'VIP', 1, 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
