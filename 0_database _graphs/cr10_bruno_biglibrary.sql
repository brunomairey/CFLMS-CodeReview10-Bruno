-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 01:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_bruno_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `cr10_bruno_biglibrary` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr10_bruno_biglibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `img` varchar(300) NOT NULL,
  `ISBN` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  `type` enum('book','CD','DVD') NOT NULL DEFAULT 'book',
  `status` enum('available','reserved') NOT NULL DEFAULT 'available',
  `author_name` varchar(255) DEFAULT NULL,
  `author_fname` varchar(255) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT 5,
  `publisher_name` varchar(255) DEFAULT NULL,
  `publisher_address` varchar(255) DEFAULT NULL,
  `publisher_zip` int(5) NOT NULL,
  `publisher_city` varchar(55) NOT NULL,
  `publisher_date` date DEFAULT NULL,
  `publisher_size` enum('big','medium','small') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `img`, `ISBN`, `title`, `short_description`, `type`, `status`, `author_name`, `author_fname`, `publisher_id`, `publisher_name`, `publisher_address`, `publisher_zip`, `publisher_city`, `publisher_date`, `publisher_size`) VALUES
(1, 'img/petitnicolas.jpg', 1007, 'Le petit Nicolas', 'Nicolas mène une existence paisible. Il a des parents qui l\'aiment, une bande de chouettes copains avec lesquels il s\'amuse bien, et il n\'a pas du tout envie que cela change...', 'book', 'available', 'Gosciny', 'Sempé', 1, 'Serri', 'kettenbruckengasse 2', 1020, 'Vienna', '2019-01-10', 'big'),
(2, 'img/barbierseville.jpg', 10001, 'Le Barbier de Séville', 'Le Barbier de Séville ou la Précaution inutile est une pièce de théâtre française en quatre actes de Beaumarchais, jouée pour la première fois le 23 février 1775. C\'est la première partie d\'une trilogie intitulée Le roman de la famille Almaviva.', 'CD', 'reserved', 'De Baumarchais', 'Pierre-Augustin', 2, 'Marina', 'kettenbruckengasse 2', 1020, 'Vienna', '2019-01-02', 'big'),
(3, 'img/carminaburuna.jpg', 10002, 'Carmina Buruna', 'Les Carmina Burana sont une partie des Trionfi, une trilogie musicale incluant les cantates Catulli Carmina et Trionfo di Afrodite. Le mouvement le plus célèbre est le chœur initial O Fortuna, repris ensuite de manière identique à la fin de l\'œuvre.', 'CD', 'available', 'Horf', 'Carl', 3, 'Theodora', 'kettenbruckengasse 3', 1030, 'Vienna', '2019-01-03', 'medium'),
(4, 'img/etranger.jpg', 1002, 'L\'étranger', 'L\'Étranger est le premier roman d’Albert Camus, paru en 1942. Il prend place dans la tétralogie que Camus nommera « cycle de l’absurde » qui décrit les fondements de la philosophie camusienne : l’absurde.', 'book', 'available', 'Camus', 'Albert', 4, 'Acilio', 'kettenbruckengasse 4', 1040, 'Vienna', '2019-01-04', 'small'),
(5, 'img/godot.jpg', 1003, 'En attendant Godot', 'En attendant Godot est une pièce de théâtre en deux actes, en français, écrite en 1948 par Samuel Beckett et publiée en 1952 à Paris aux Éditions de Minuit. La particularité de ce livre vient du fait que le nombre de scènes n\'est ni décompté ni annoncé.', 'book', 'available', 'Becket', 'Samuel', 1, 'Serri', 'kettenbruckengasse 1', 1010, 'Vienna', '2019-01-05', 'big'),
(6, 'img/grandemaison.jpg', 1004, 'La grande maison', 'La Grande Maison est une chronique douce et très amère qui nous est proposée par Mohammed Dib, un premier opus d\'une trilogie qui permettra d\'en apprendre plus sur l\'évolution du petit Omar', 'book', 'available', 'Dib', 'Samuel', 2, 'Marina', 'kettenbruckengasse 2', 1020, 'Vienna', '2019-01-06', 'big'),
(7, 'img/lamodification.jpg', 1005, 'La modification', 'La Modification est donc l’histoire du cheminement intérieur d\'un homme auquel il est facile de s\'identifier grâce au style unique de son auteur.', 'book', 'reserved', 'Butor', 'Michael', 3, 'Theodora', 'kettenbruckengasse 3', 1030, 'Vienna', '2019-01-07', 'medium'),
(8, 'img/mozart.jpg', 10003, 'Mozart', 'Mozart se retrouve très vite sollicité par la noblesse qui ne tarit plus d’éloges à son sujet ; il compose ses premières grandes œuvres, opéra bouffe, messe, quatuor, concerto, symphonie, en tout plus de six cents pièces en trente-cinq ans', 'CD', 'available', 'Mozart', 'Wolfgang Amadeus', 4, 'Acilio', 'kettenbruckengasse 4', 1040, 'Vienna', '2019-01-08', 'small'),
(9, 'img/pennac.jpg', 1006, 'Comme un roman', 'Cet essai se veut à la fois un hymne et une désacralisation de la lecture, ainsi qu\'une invitation à réfléchir à la manière pédagogique de l\'appréhender.', 'book', 'available', 'Pennac', 'Daniel', 1, 'Serri', 'kettenbruckengasse 1', 1010, 'Vienna', '2019-01-09', 'big'),
(11, 'img/rex.jpg', 100001, 'Rex', 'Rex, le plus célèbre des chiens flics Un agent de police décède dans une fusillade mais son fidèle compagnon Rex en réchappe. Chargé de l\'affaire, Richard Moser fait la rencontre avec le chien et décide de le garder. Pendant près de 20 ans, Rex incarnera à l\'écran le chien flic le plus connu au monde.', 'DVD', 'available', 'Henry', 'Nick', 3, 'Theodora', 'kettenbruckengasse 3', 1030, 'Vienna', '2019-01-11', 'medium'),
(12, 'img/simenon.jpg', 100002, 'Simenon', 'Une femme angoissée arrive au commissariat pour signaler la disparition de son époux, Lionel Monde, directeur d\'une entreprise de transports en banlieue parisienne. Depuis 3 jours, personne n\'a de ses nouvelles, que ce soit sa famille ou ses employés. En réalité, déçu par son existence, Lionel a pris la fuite le jour de ses 49 ans...', 'DVD', 'available', 'Simenon', 'Georges', 4, 'Acilio', 'kettenbruckengasse 4', 1040, 'Vienna', '2019-01-12', 'small'),
(17, 'img/pedigree.jpg', 1008, 'Un Pedigree', 'Patrick Modiano raconte que ses parents embauchent une jeune fille pour s\'occuper de lui lorsqu\'il a à peu près 14 ans. Il la perdra de vue un moment et la retrouvera à Saint-Lô dans la Manche alors qu\'elle a épousé un vétérinaire des haras. Ils l\'accueilleront assez souvent dans leur maison de Saint-Lô. Patrick Modiano écrit son autobiographie à la façon d\'une recherche d\'identité.', 'book', 'reserved', 'Patrick', 'Modiano', 5, 'Bruno', 'kettenbruckengasse 7', 1060, 'Vienna', '2020-07-23', 'small'),
(20, 'img/aurevoir.jpg', 100003, 'Au revoir là-haut', 'Au revoir là-haut s\'organise autour d\'une double arnaque et d\'un double suspense, sur fond historique extrêmement documenté. Ajoutez-y une écriture sèche, mordante, précise, qui manie brillamment l\'humour noir. Et vous comprendrez pourquoi, salué par la critique et plébiscité par les libraires, le livre s\'annonce comme un des best-sellers de l\'automne.', 'DVD', 'available', 'Lemaitre', 'Pierre', 2, 'Marina', 'kettenbruckengasse 7', 1060, 'Vienna', '2020-07-15', 'big');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
