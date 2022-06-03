-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 12:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `picture`) VALUES
(1, 'Roeitrainer', 'categories/roeitrainer.jpg'),
(2, 'Crosstrainer', 'categories/crosstrainer.jpg'),
(3, 'Hometrainer', 'categories/hometrainer.jpg'),
(4, 'Loopband', 'categories/loopband.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `picture`, `category_id`) VALUES
(1, 'First Degree Fitness Viking PRO XL', 'De ongekende Fluid Force-technologie zorgt ervoor dat er geen dode hoeken zijn tijdens de hele slag, waardoor gebruikers een krachtige training kunnen doen en het gevoel hebben dat ze door open water gaan. Viking Pro XL biedt alle premium functies zoals Bluetooth auto-adjust-technologie die instinctief de gekozen tank weerstand correleert met het console display. Slimme apparaat connectiviteit gekoppeld aan de sociale app van FDF, stelt gebruikers in staat om persoonlijke of clubrecords op te nemen, te bewaken en op te slaan. Hoewel dit model meer dan alleen geschikt is voor de topsport markt, is Viking Pro XL een uitzonderlijke keuze voor mensen van elk fitnessniveau vanwege het gebruiksvriendelijke karakter en het ergonomische ontwerp.', 'categories/roeitrainer/r1.jpg\r\n', 1),
(2, 'LifeFitness Roeitrainer Row HX', 'De nieuwe tank van de Row HX-trainer heeft een grote en eenvoudige draaiknop die een nauwkeurige en gelijkmatige training garandeert .Daarnaast is de handgreep verbeterd ten opzichte van het vorige model. Het handvat is nu ergonomisch gevormd.', 'categories/roeitrainer/r2.jpg', 1),
(3, 'Taurus Roeitrainer RX7', 'De Taurus roeitrainer RX7 heeft een gecombineerd weerstandssysteem met magnetische weerstand en luchtweerstand. Dit biedt verschillende voordelen bij het roeien: Enerzijds kan de basisweerstand worden ingesteld. Bovendien biedt dit systeem een meer gelijkmatige roeibeweging bij elke intensiteit. De magnetische weerstand heeft de neiging om het onderste gebied aan te tasten, terwijl de luchtweerstand bij hoge itensiteit juist zorgt voor een prettiger bewegingsverloop. Dankzij de magnetische weerstand is het ook mogelijk om te trainen met watt-nauwkeurigheid, daardoor kan een watt-waarde tot wel 300 watt worden ingesteld. De computer regels vervolgens het weerstandsniveau afhankelijk van de roeisnelheid zodat deze watt-waarde constant wordt gehouden.Dankzij de luchtweerstand is er een veel hogere weerstand mogelijk, zo kunnen ook wedstrijdsporters trainen met de Taurus roeitrainer RX7. Als één van de weinige roeitoestellen biedt de RX7 ook een bedieningspaneel op de handgreep, zo kun je ook tijdens de training instellingen veranderen.', 'categories/roeitrainer/r3.jpg', 1),
(4, 'Kettler Roeitrainer Rower H2O', 'De Kettler Rower H2O overtuigt door zijn watertankweerstandssysteem. Het voordeel van de Rower H2O is dat je traint zonder een \"dood punt\". Dit betekent dat je bij elke beweging vanaf het begin tegen voortdurende weerstand werkt. Hierdoor wordt de training een zeer realistiche roeitraining\r\n\r\nTijdens je training heb je door het aangename watergeluid het gevoel echt op het water te roeien. De waterweerstand zorgt daarnaast ook voor een nog realistischere ervaring. Net als bij roeien op het water, neemt de weerstand automatisch toe met de intensiteit en snelheid van je roeibewegingen!\r\n\r\nDe LCD-trainingscomputer geeft je alle relevante informatie tijdens je training. Informatie zoals slagfrequentie, tijd, calorieverbruik, afstand en snelheid worden duidelijk weergegeven op de display.\r\n\r\nDe H2O van Kettler is voorzien van transportrollen en kan dus ruimtebesparend verticaal opgesteld worden. Zo kun je het toestel in korte tijd voor of na je training naar de gewenste plek verplaatsen en opbergen op slechts 53 x 51 cm.', 'categories/roeitrainer/r4.jpg', 1),
(5, 'Flow Fitness Turner DHT2500i', 'De Flow Fitness Turner DHT2500i Hometrainer is een gebruiksvriendelijke hometrainer met een gemakkelijke navigatie, een lage instap en soepele trapbewegingen. Dit fitnessapparaat is ideaal als je graag wat extra calorieën wilt verbranden en conditie op wilt bouwen, gewoon vanuit je woonkamer. En omdat je de DHT2500i kunt koppelen met je favoriete apps, is trainen vanaf nu nóg leuker.', 'categories/hometrainer/h1.jpg', 3),
(6, 'Life Fitness C1 GO', 'Niet voor niets vindt u Life Fitness hometrainers in sportscholen over de hele wereld. De Life Fitness C1 GO hometrainer loopt vloeiend en stil. Dit is een mooie kennismaking met een kwaliteitsmerk. Maak nu gebruik van de innovatie en research waar de Life Fitness hometrainers om bekend staan en merk het verschil.', 'categories/hometrainer/h2.jpg', 3),
(7, 'VirtuFit CTR 3.0i Ergometer Crosstrainer', 'Train op een van de meest effectieve manieren met de VirtuFit CTR 3.0i Crosstrainer. Met deze crosstrainer train je je gehele lichaam, van je benen en armen tot je core. En dat op een fijne en soepele manier. Met 32 weerstandsniveaus en 18 verschillende trainingsprogramma\'s zet je iedere keer net dat stapje extra. En je prestaties? Die zie je terug op het ultramoderne LCD display mét bluetooth.', 'categories/crosstrainer/cr1.jpg', 2),
(8, 'VirtuFit Elite FDR 2.5i Semi-Pro Crosstrainer', 'De stevige en slijtbestendige VirtuFit Elite FDR 2.5i Semi-Pro Crosstrainer geeft je een stille, vloeiende oefening, zelfs op de hoogste snelheid. Dit apparaat heeft alles in huis om optimaal te trainen. Het zware vliegwiel zorgt voor een vloeiende en prettige beweging. De VirtuFit Elite FDR 2.5i Semi-Pro Crosstrainer is voorzien van een dubbele geleiding wat zorgt voor een stille en stabiele training. De wielen van de dubbele geleiding zijn slijtvast en gelagerd en hierdoor onderhoudsvrij.', 'categories/crosstrainer/cr2.jpg', 2),
(9, 'Flow Fitness Glider DCT2500i Crosstrainer', 'Een training met de Flow Fitness Glider DCT2500i Crosstrainer is een training met enorm veel variaties. Dankzij de bluetooth ontvanger is dit fitnessapparaat geschikt voor gebruik met populaire apps als Kinomap en iConsole. Daarnaast beschikt de crosstrainer ook nog eens over 24 programma\'s die je gewoon via het LCD scherm volgt en over 16 verschillende trainingsniveaus.', 'categories/crosstrainer/cr3.jpg', 2),
(10, 'Bowflex Max Trainer M10 ', 'De Bowflex Max Trainer M10 combineert een crosstrainer en een stepper in één fitnessapparaat. Hierdoor kun je alle spieren in je lichaam intensief trainen. Je verbrandt veel calorieën doordat je verschillende spiergroepen tegelijkertijd aan het trainen bent. De Bowflex Max M10 bevat innovatieve functies zoals connectivity met Netflix & Amazon Prime, gepersonaliseerde coaching, upper-body trainingsprogramma’s en high-intensity intervaltrainingen.', 'categories/crosstrainer/cr4.jpg', 2),
(11, 'Nautilus E628 Crosstrainer', 'De Nautilus E628 Crosstrainer is niet te vergelijken met een normale crosstrainer voor thuisgebruik. Deze crosstrainer is specifiek gericht op fanatieke sporters die puur prestatiegericht trainen en het allerbeste uit zichzelf willen halen.', 'categories/crosstrainer/cr5.jpg', 2),
(12, 'Matrix E50 Crosstrainer - XR', 'Ga voor een full body workout zonder je gewrichten te belasten met de Matrix E50 Elliptical Crosstrainer - XR. Deze crosstrainer is niet alleen mooi vormgegeven, maar is ook nog eens voorzien van de beste technische snufjes. Met de PerfectStride technologie combineert dit apparaat de ideale staplengte met een ergonomische en correcte plaatsing van je voet. ', 'categories/crosstrainer/cr6.jpg', 2),
(19, 'cardiostrong Loopband TX90 Smart', 'De cardiostrong Loopband TX90 Smart biedt zeer veel mogelijkheden voor de beginnende loper en ook voor de gevorderde loper. Het gebruiksgemak staat bij deze loopband voorop, de snelheid en het stijgingspercentage kunnen beide via 8 keuzetoetsen worden ingesteld op de zijleuningen van de loopband. Zo kun je fijn door blijven trainen, terwijl je de instellingen veranderd. De snelheid is instelbaar van 0.8 – 20 km/h en het stijgingspercentage is verstelbaar tot en met 15%. Met de motor van 3.5 PK zal het deze loopband niet aan kracht ontbreken voor een training op maat. Met de keuze uit 44 trainingsprogramma’s kan er gevarieerd en effectief getraind worden. Het grote touchscreen van 15,6 inch laat je in één oogopslag zien wat je trainingstijd, snelheid, stijgingspercentage, tempo, calorieverbruik en hartslag is. De hartslag wordt gemeten met handsensoren. Daarbij is het ook mogelijk om een draadloze hartslagmeting te doen via de optioneel verkrijgbare borstband.', 'categories/loopband/l1.jpg', 4),
(20, 'Darwin Fitness Loopband TM70 Touch', 'Met de Darwin Fitness Loopband TM70 Touch is geen enkele training hetzelfde. Danzkij de 49 verschillende, vooraf geïnstalleerde trainingsprogramma\'s waarvan de snelheid en helling al is ingesteld. Dit maakt elke training weer anders. Ook is het mogelijk om je training handmatig in te stellen.\r\nDe TM70 Touch heeft een groot en duidelijk trainingsdisplay met touchscreen. Op de computer kun je op elk gewenst moment je trainingstijd, afstand, snelheid, stijgingspercentage, calorieverbuik en hartslag aflezen. Het meten van de hartslag gaat via de handsensoren op de handvatten. Wil je dat je hartslag nog accurater gemeten wordt, of wil je trainen zonder je handen op de handvatten te hebben? Dan is het mogelijk om de (optioneel te verkrijgen) borstand te gebruiken, deze meet geheel draadloos de hartslag.', 'categories/loopband/l2.jpg', 4),
(21, 'cardiostrong Loopband TX20', 'De cardiostrong TX20 is een compacte en betaalbare loopband op instapniveau om thuis eenvoudige hardloop- en wandeltrainingen te doen. Dankzij zijn kleine afmetingen en een inklapmechanisme kan de loopband zelfs in kleine fitnessruimtes of woonkamers worden gebruikt.', 'categories/loopband/l3.jpg', 4),
(22, 'Bowflex Loopband 56', 'Met de Bowflex Loopband 56 ben jij verzekerd van een loopband van semiprofessionele kwaliteit. Waarmee je ook nog eens kan genieten van allerlei streamingdiensten. Deze loopband van hoge kwaliteit maakt jouw trainingen tot een waar genot. Aan comfort zal het niet ontbreken in ieder geval.', 'categories/loopband/l4.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `stars` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `role`) VALUES
(1, 'admin@healthone.com', 'qwerty', 'Kees', 'van de Bacon', 'admin'),
(2, 'fransbauer@outlook.com', 'qwerty', 'Frans', 'Bauer', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`category_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`product_id`),
  ADD KEY `userid` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `categoryid` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `productid` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
