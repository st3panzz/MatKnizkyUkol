-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 12:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maturitni_knizky`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorie_knihy`
--

CREATE TABLE `kategorie_knihy` (
  `idkategorie` int(11) NOT NULL,
  `kategorie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategorie_knihy`
--

INSERT INTO `kategorie_knihy` (`idkategorie`, `kategorie`) VALUES
(1, '1 - Světová a česká lit. do konce 18. stol.'),
(2, '2 - Světová a česká lit. 19. stol.'),
(3, '3 - Světová lit. 20. a 21. stol.'),
(4, '4 - Česká lit. 20. a 21. stol.');

-- --------------------------------------------------------

--
-- Table structure for table `knihy`
--

CREATE TABLE `knihy` (
  `idknihy` int(11) NOT NULL,
  `nazev_knihy` text NOT NULL,
  `autor` text NOT NULL,
  `kategorie_idkategorie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `knihy`
--

INSERT INTO `knihy` (`idknihy`, `nazev_knihy`, `autor`, `kategorie_idkategorie`) VALUES
(1, 'Publius Ovidius Naso', ' Proměny', '1'),
(2, 'Giovanni Boccaccio', ' Dekameron', '1'),
(3, 'William Shakespeare', ' Hamlet', '1'),
(4, 'William Shakespeare', ' Romeo a Julie', '1'),
(5, 'Jan Amos Komenský', ' Labyrint světa a ráj srdce', '1'),
(6, 'Moliére', ' Lakomec', '1'),
(7, 'Ezop', 'Bajky', '1'),
(8, 'Honoré de Balzac', 'Evženie Grandetová', '2'),
(9, 'Lev Nikolajevič Tolstoj', ' Anna Kareninová', '2'),
(10, 'Karel Hynek Mácha', ' Máj', '2'),
(11, 'Josef Kajetán Tyl', ' Strakonický dudák', '2'),
(12, 'Karel Jaromír Erben', ' Kytice', '2'),
(13, 'Karel Havlíček Borovský', ' Král Lávra', '2'),
(14, 'Božena Němcová', ' Divá Bára', '2'),
(15, 'Jan Neruda', ' Povídky malostranské', '2'),
(16, 'Jaroslav Vrchlický', ' Noc na Karlštejně', '2'),
(17, 'Alois Jirásek', ' Staré pověsti české', '2'),
(18, 'Oscar Wilde', ' Jak je důležité míti Filipa', '2'),
(19, 'Oscar Wilde', ' Obraz Doriana Graye', '2'),
(20, 'Alois a Vilém Mrštíkové', ' Maryša', '2'),
(21, 'Božena Němcová', ' Babička', '2'),
(22, 'Emil Zola', ' Zabiják', '2'),
(23, 'Nikolaj Vasiljevič Gogol', ' Revizor', '2'),
(24, 'Alexandr Sergejevič Puškin', ' Evžen Oněgin', '2'),
(25, 'Erich Maria Remarque', ' Na západní frontě klid', '3'),
(26, 'Georg Bernard Shaw', ' Pygmalion', '3'),
(27, 'Antoine de Saint-Exupéry', ' Malý princ', '3'),
(28, 'Gabriel García Marquéz', ' Kronika ohlášené smrti', '3'),
(29, 'Alberto Moravia', ' Horalka', '3'),
(30, 'Michail Šolochov', ' Osud člověka', '3'),
(31, 'Ernest Hemingway', ' Stařec a moře', '3'),
(32, 'Ray Bradbury', ' 451° Fahrenheita', '3'),
(33, 'William Styron', ' Sophiina volba', '3'),
(34, 'Guillaume Apollinaire', ' Alkoholy', '3'),
(35, 'Romain Rolland', ' Petr a Lucie', '3'),
(36, 'Paulo Coelho', ' Alchymista', '3'),
(37, 'George Orwell', ' Farma zvířat', '3'),
(38, 'Bohumil Hrabal', ' Ostře sledované vlaky', '4'),
(39, 'Bohumil Hrabal', ' Postřižiny', '4'),
(40, 'Viktor Dyk', ' Krysař', '4'),
(41, 'Jan Drda', ' Němá barikáda', '4'),
(42, 'Jan Otčenášek', ' Romeo, Julie a tma', '4'),
(43, 'Karel Čapek', ' Bílá nemoc', '4'),
(44, 'Karel Poláček', ' Bylo nás pět', '4'),
(45, 'Ivan Olbracht', ' Golet v údolí', '4'),
(46, 'Jaroslav Seifert', ' Všecky krásy světa', '4'),
(47, 'Vítězslav Nezval', ' Manon Lescaut', '4'),
(48, 'Arnošt Lustig', ' Modlitba pro Kateřinu Horowitzovou', '4'),
(49, 'Michal Viewegh', ' Báječná léta pod psa', '4'),
(50, 'František Hrubín', ' Romance pro křídlovku', '4'),
(51, 'Ota Pavel', ' Smrt krásných srnců', '4'),
(52, 'Petr Bezruč', ' Slezské písně', '4'),
(53, 'Jiří Wolker', ' Těžká hodina', '4'),
(54, 'Karel Čapek', ' Povídky z jedné kapsy, Povídky z druhé kapsy', '4'),
(55, 'Franz Kafka', ' Proměna', '4'),
(56, 'František Kožík', ' Na dolinách svitá (Hejtman Šarovec)', '4'),
(57, 'Květa Legátová', ' Jozova Hanule', '4'),
(58, 'Jaroslav Hašek', ' Osudy dobrého vojáka Švejka za světové války 1. díl', '4'),
(59, 'Jan Skácel', ' Smuténka', '4'),
(60, 'Irena Dousková', ' Hrdý Budžes', '4'),
(61, 'Karel Kryl', ' Kníška Karla Kryla', '4'),
(62, 'Miloslav Šimek a Jiří Grossmann', ' Povídky Šimka a Grossmanna', '4'),
(63, 'Ladislav Smoljak a Zdeněk Svěrák', ' Dobytí severního pólu', '4'),
(64, 'Jan Werich', ' Fimfárum', '4');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `polozka_menu` text NOT NULL,
  `display` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idmenu`, `polozka_menu`, `display`) VALUES
(1, 'Knihy k maturitě', 'Maturita'),
(2, 'Kategorie', 'Kategorie'),
(3, 'Všechny knihy', 'Knihy');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
