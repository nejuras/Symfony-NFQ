-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 18, 2018 at 06:37 PM
-- Server version: 10.0.33-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nfq_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isbn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `author`, `genre`, `isbn`, `price`) VALUES
(1, 'NFQ Akademija', 'Monika Poškaitytė', 'Mokslinė Fantastika', '245-589-458', '55.45');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `city` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `postalcode` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `isbn` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `phone`, `city`, `email`, `address`, `postalcode`, `isbn`) VALUES
(1, 'Nerijus', 'Juras', 865266652, 'Vilnius', 'juras@gmail.com', 'Žemaitės 5-16', 'LT-8563', '245-589-458'),
(2, 'Petras', 'Cvirka', 865233355, 'Vilnius', 'cvirkas@gmail.com', 'Klanatos 9-45', 'LT-8556', '245-589-458'),
(3, 'Povilas', 'Cvekas', 865232355, 'Vilnius', 'cvekas@mail.com', 'Kauno 12-9', 'LT-8555', '245-589-458'),
(4, 'Paulius', 'Klekas', 865236555, 'Vilnius', 'povilas@gmail.com', 'Paco 8-123', 'LT-4422', '245-589-458'),
(5, 'jonas', 'balionas', 865395633, 'Kaunas', 'balionas@gmail.com', 'Klono 45-785', 'LT-8769', '245-589-458'),
(6, 'jogailas', 'meniras', 865236952, 'Kaunas', 'jogaila@gmail.com', 'vytauto 65-8', 'LT-8569', '245-589-458'),
(7, 'Guoda', 'Janutė', 852699936, 'Alytus', 'janute@mail.lt', 'Vytauto 6-5', 'LT-7800', '245-589-458'),
(8, 'Inga', 'Spurgienė', 868559341, 'Jonava', 'ingutes@hotmail.com', 'eglių  4-8', 'LT-12547', '245-589-458'),
(9, 'Nerijus', 'Juras', 865235698, 'Kaunas', 'nertu@gmail.com', 'Jurbarko 8-9', 'LT-7564', '245-589-458'),
(10, 'Nerijus', 'Juras', 865235698, 'Kaunas', 'nertu@gmail.com', 'Jurbarko 8-9', 'LT-7564', '245-589-458'),
(11, 'Greta', 'KRETA', 85236974, 'kupiškis', 'kreta@gmail.com', 'Baliaus 5-8', 'LT-7892', '245-589-458'),
(12, 'klaudija', 'jeraminaitė', 85236987, 'Radviliškis', 'jaramina@gmail.com', 'Vytenio 9-5', 'Lt-5478', '245-589-458'),
(13, 'klaudijus', 'jeraminas', 85236945, 'Radviliškis', 'jara@gmail.com', 'Jaltos 8-9', 'LT-8562', '245-589-458'),
(14, 'Juozas', 'Kelmošius', 85269752, 'Šiauliai', 'kelmas@mail.lt', 'Kluono 89-256', 'LT-4523', '245-589-458'),
(15, 'laima', 'norkutė', 85236598, 'Kaišiadorys', 'norka@gmail.com', 'Herkaus 5-86', 'LT-4564', '245-589-458'),
(16, 'Jolanta', 'Kalantienė', 865245687, 'Klaipėda', 'jolanta@gmail.com', 'Bangų g. 4', 'Lt-4569', '245-589-458'),
(17, 'Henrikas', 'Jankus', 865236952, 'Varėna', 'jankus@gmail.com', 'Kauno 3', 'LT-4512', '245-589-458'),
(18, 'Donatas', 'Jonynas', 85369874, 'Kaunas', 'jonis@mail.lt', 'Kluono 8-96', 'LT-5468', '245-589-458'),
(19, 'Goda', 'Jonaitienė', 865269352, 'Šilutė', 'jong@gor.lt', 'Mamos 8-95', 'Lt-4567', '245-589-458'),
(20, 'Tomas', 'Bandonas', 865345698, 'Visaginas', 'banda@banda.lt', 'Lobono 5-78', 'LT-1205', '245-589-458'),
(21, 'Ona', 'Banaitė', 85236987, 'Visaginas', 'banite@gmail.com', 'jonavos 45-89', 'LT-4568', '245-589-458'),
(22, 'Valerija', 'Vorabjova', 85269754, 'Elektrėnai', 'vorab@mail.ru', 'Herkaus 8-78', 'LT-7521', '245-589-458'),
(23, 'Jonas', 'Pauluskas', 865214785, 'Jurbarkas', 'palomas@kaunas.lt', 'užtvakos 17', 'LT-4527', '245-589-458'),
(24, 'Petronėlė', 'Palkomskaja', 865214123, 'Kėdainiai', 'petre@gmail.com', 'draugystės 5-17', 'LT-4514', '245-589-458'),
(25, 'Agota', 'Tulevičiūtė', 865217856, 'Visaginas', 'agotule@gmail.com', 'Raudondvario 5-123', 'LT-3256', '245-589-458'),
(26, 'Arūnas', 'Tulas', 865452356, 'Biržai', 'tulasarn@gmail.com', 'K. Donelaičio 5-123', 'LT-4789', '245-589-458'),
(27, 'Timuras', 'Burys', 865412856, 'Radviliškis', 'burist@gmail.com', 'Jonavos 45-12c', 'LT-7892', '245-589-458'),
(28, 'Jogaila', 'Morkūnas', 865236578, 'Prienai', 'morka@baltnet.lt', 'Ateities pl. 31D', 'LT-78965', '245-589-458'),
(29, 'Jurgis', 'Morks', 865785278, 'Panevėžys', 'morkus@delfi.lt', 'Vytauto 20-8', 'LT-74123', '245-589-458'),
(30, 'Jurga', 'Morkuckytė', 865741236, 'Vilnius', 'morkuckytes@gmail.com', 'Savanoriu pr 1564C', 'LT-77852', '245-589-458'),
(31, 'Andrius', 'gustavas', 865741589, 'Vilnius', 'gustas@gmail.com', 'Chemijos 15-9', 'LT-77425', '245-589-458'),
(32, 'Žana', 'Darkienė', 865169358, 'Prienai', 'dark@gmail.com', 'Gintariškių 4-5C', 'LT-41258', '245-589-458'),
(33, 'Silvestras', 'Stalionis', 865463978, 'Biržai', 'stalas@gmail.com', 'Kauno 4-2', 'LT-41258', '245-589-458'),
(34, 'Briusas', 'Vilstavičius', 865287932, 'Elektrėnai', 'vilsta@gmail.com', 'Svajonės 5-89', 'LT-55896', '245-589-458'),
(35, 'Abigailė', 'Bliznikaitė', 865345698, 'Visaginas', 'bliznikaitea@mail.com', 'paplajaus 4-52', 'LT-55412', '245-589-458'),
(36, 'Monika', 'Plašienė', 85236478, 'Plungė', 'monikute@monika.lt', 'mokyklos 5-45', 'LT-78512', '245-589-458'),
(37, 'Vaiva', 'Genutytė', 85237523, 'Šilutė', 'genute@gmail.com', 'veiverių 5-85', 'LT-41289', '245-589-458'),
(38, 'Henrikas', 'Gyja', 865325874, 'Šilalė', 'gyja@gmail.com', 'kirtimų 5b-5', 'LT-11258', '245-589-458'),
(39, 'Andrius', 'Saja', 865147896, 'Elektrėnai', 'saja@auto.com', 'Klaipėdos 4-89', 'LT-4783', '245-589-458'),
(40, 'Feliksas', 'Dūda', 865347852, 'Biržai', 'duda@gmail.com', 'Pramonės 45-6', 'LT-4139', '245-589-458'),
(41, 'Andromeda', 'Dalkaitė', 865489632, 'Plungė', 'dalka@gmail.com', 'Aguonu 6-45', 'LT-14852', '245-589-458'),
(42, 'Petras', 'Čeikovskis', 865247895, 'Alytus', 'ceika@gmail.com', 'Terminalo 5-8d', 'LT-4158', '245-589-458'),
(43, 'Harieta', 'Pabedinskienė', 865147896, 'Elektrėnai', 'harieta@gmail.com', 'dūmų 5-9', 'LT-74569', '245-589-458'),
(44, 'Antonis', 'Sopranas', 865236987, 'Vilnius', 'sopranis@vilnius.com', 'savivaldybės 89c-8', 'LT-45236', '245-589-458'),
(45, 'Rimas', 'Šimašius', 865345687, 'Biržai', 'simas@gmail.com', 'T. Ševčenkos 14-85', 'LT-74125', '245-589-458'),
(46, 'Dovilė', 'Diksnytė', 865345678, 'Jonava', 'diksne@gmail.com', 'Zietelos 5-86', 'LT-4712', '245-589-458'),
(47, 'Astijus', 'Darkevičius', 85369235, 'Biržai', 'darke@gmail.com', 'Kuršių 5-8', 'LT-41269', '245-589-458'),
(48, 'Nerija', 'gluodenytė', 85436972, 'Panevėžys', 'gluodena@gmail.com', 'Užtvakos 5-9', 'LT-1569', '245-589-458'),
(49, 'Nerijus', 'Jurevičius', 85321496, 'Kaunas', 'jureivis@gmail.com', 'Meškeriotojų 35-96', 'LT-45896', '245-589-458'),
(50, 'Rasa', 'Gulbė', 85369345, 'Vilnius', 'gulbe@gmail.com', 'Paukščių 45-9', 'LT-1256', '245-589-458'),
(51, 'Antanas', 'Danisevičius', 85632547, 'Zarasai', 'snieckus@gmail.com', 'Agrastų 45-89', 'LT-12569', '245-589-458'),
(52, 'Vanda', 'Filmanavičiūtė', 85369874, 'Vilnius', 'vanda@gmail.com', 'Kauno 4c-5', 'LT-45698', '245-589-458'),
(53, 'Modesta', 'Kauneckaitė', 85269712, 'Radviliškis', 'kiaune@mail.lt', 'Guobu 7-8', 'LT-12589', '245-589-458');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
