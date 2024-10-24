-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 okt 2024 om 11:17
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verrukkulluk`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artiekel`
--

CREATE TABLE `artiekel` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `omschrijving` text NOT NULL,
  `prijs` float NOT NULL,
  `eenheid` set('stuks','ml','g','kg','teen','ons') NOT NULL,
  `verpakking` int(11) NOT NULL,
  `calorieen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `artiekel`
--

INSERT INTO `artiekel` (`id`, `naam`, `omschrijving`, `prijs`, `eenheid`, `verpakking`, `calorieen`) VALUES
(1, 'Aubergine\r\n', 'Een paarse groente met een zachte, sponsachtige textuur die goed smaken absorbeert.\r\n', 1, 'stuks', 1, 25),
(2, 'Extra vergine olijfolie\r\n', 'Hoogwaardige olijfolie met een rijke, fruitige smaak.\r\n', 4, 'ml', 250, 2000),
(3, 'Passata\r\n', 'Geconcentreerde tomatenpasta voor een diepe tomatensmaak.\r\n', 1.5, 'g', 500, 160),
(4, 'Knoflook\r\n', 'Aromatische bol met een scherpe smaak, gebruikt om gerechten op smaak te brengen.\r\n', 0.75, 'teen', 15, 20),
(5, 'Mozzarella\r\n', 'Zachte, witte kaas die smelt en een romige textuur toevoegt.\r\n', 0.9, 'g', 400, 1280),
(6, 'Parmezaanse kaas\r\n', 'Harde, korrelige kaas met een rijke, umami-smaak.\r\n', 4, 'g', 380, 1280),
(7, 'Verse Basilicum\r\n', 'Aromatisch kruid met een zoete, peperige smaak.\r\n', 2, 'stuks', 1, 5),
(8, 'Gedroogde Oregano\r\n', 'Kruid met een sterke, aromatische smaak.\r\n', 2.02, 'g', 5, 15),
(9, 'Courgettes\r\n', 'Groene groente met een milde smaak en knapperige textuur.\r\n', 0.8, 'stuks', 1, 33),
(10, 'Gele Pompoen\r\n', 'Groente met een zoete, nootachtige smaak.\r\n', 2.5, 'stuks', 1, 30),
(11, 'Rode Paprika\r\n', 'Zoete, knapperige groente.\r\n', 1, 'stuks', 1, 37),
(12, 'Gele Parika\r\n', 'Zoete, knapperige groente.\r\n', 1, 'stuks', 1, 37),
(13, 'Tomaat\r\n', 'Rijke, sappige groente met een zoete en zure smaak.\r\n', 0.3, 'stuks', 1, 22),
(14, 'Ui', 'Aromatische groente met een scherpe smaak.\r\n', 0.65, 'stuks', 1, 50),
(15, 'Gehakt\r\n', 'Fijngemalen vlees, meestal rundvlees, varkensvlees of een mix daarvan.\r\n', 9, 'g', 500, 2160),
(16, 'Rode pepervlokken\r\n', 'Gedroogde en gemalen chilipepers voor een pittige smaak.\r\n', 1, 'g', 100, 314),
(17, 'Varkensvlees', 'Vlees van een varken', 12, 'kg', 1, 2420),
(18, 'Honing', 'Natuurlijke zoetstof gemaakt door bijen van de nectar van bloemen.', 4, 'ml', 250, 820),
(19, 'Maltose', 'Ook wel moutsuiker genoemd. Het heeft een lichte, stroperige textuur en een milde, zoete smaak. ', 5, 'g', 500, 1900),
(20, 'Gembersiroop', 'Een zoete en pittige siroop gemaakt van verse gember, suiker en water. Het heeft een sterke, aromatische smaak', 3, 'ml', 250, 800),
(21, 'Hoisinsaus', 'Een dikke, donkerbruine saus gemaakt van gefermenteerde sojabonenpasta, venkel, rode pepers, knoflook, azijn, suiker en vijfkruidenpoeder. Het heeft een complexe smaak die zowel zoet, zout als een beetje pittig is, met sterke umami-tonen.\r\n', 3, 'ml', 250, 700),
(22, 'Gele bonensaus', 'Ook bekend als taotjo, een gefermenteerde saus gemaakt van sojabonen, water, zout en soms tarwebloem. Het heeft een zoute, maggi-achtige smaak.', 2.5, 'g', 200, 300),
(23, 'Sufu', 'Ook bekend als gefermenteerde tofu of tofu kaas, blokjes tofu die zijn gefermenteerd en ingelegd in een mengsel van zout, rijstwijn, en soms sesamolie of rijstazijn. Het heeft een romige textuur en een sterke, umami smaak die doet denken aan blauwe kaas.', 4, 'g', 200, 400),
(24, 'Donkere sojasaus', 'Een dikke, stroperige saus gemaakt van gefermenteerde sojabonen, tarwe, water, zout en vaak melasse of karamel. Het heeft een rijke, diepe smaak.', 3, 'ml', 500, 500),
(25, 'Lichte sojasaus', 'Een dunne, zoute saus gemaakt van gefermenteerde sojabonen, tarwe, water en zout. Het heeft een lichtere kleur en een zoutere smaak dan donkere sojasaus.\r\n', 3, 'ml', 500, 500),
(26, 'Chinese rozenlikeur', 'Ook bekend als Meiguilu jiu, een gedistilleerde drank gemaakt van sorgo, suiker en Chinese rozen, en heeft een lichte rozengeur.', 16.75, 'ml', 500, 1100),
(27, 'Shaoxing rijstwijn', 'Een traditionele Chinese kookwijn gemaakt van gefermenteerde rijst. Het heeft een rijke, complexe smaak.', 6.5, 'ml', 500, 600),
(28, 'Vijfkruidenpoeder', 'Een Chinees kruidenmengsel dat meestal bestaat uit steranijs, kruidnagel, Chinese kaneel (cassia), Sichuanpeper en venkelzaad. Het heeft een complexe, aromatische smaak die zowel zoet, pittig als licht bitter is.', 1.5, 'g', 50, 150),
(29, 'Gerookte makreel', 'Een vis die is gerookt om een rijke, rokerige smaak te krijgen. Het vlees is stevig en sappig, en de vis is rijk aan omega-3-vetzuren.', 4, 'stuks', 1, 305),
(30, 'Sjalotten', 'Kleine, langwerpige uien met een mildere en zoetere smaak dan gewone uien.', 1.5, 'stuks', 14, 280),
(31, 'Limoenblaadjes', 'Ook bekend als kaffir lime leaves, aromatische bladeren van de kaffirlimoenboom. Ze hebben een frisse, citrusachtige smaak.', 1.5, 'g', 10, 1),
(32, 'Gember', 'Een specerij afkomstig van de wortelstok van de gemberplant. Het heeft een scherpe, pittige smaak.\r\n', 1.5, 'g', 100, 80),
(33, 'Ketjap manis', 'Een Indonesische zoete sojasaus. Het is dikker en stroperiger dan gewone sojasaus en heeft een rijke, zoete smaak door de toevoeging van palmsuiker.', 3, 'ml', 500, 1500),
(34, 'Sambal', 'Een pittige saus gemaakt van gemalen chilipepers en andere ingrediënten zoals knoflook, gember, en azijn. ', 2.5, 'g', 200, 200),
(35, 'Azijn', 'Een zure vloeistof die wordt geproduceerd door de fermentatie van ethanol door azijnzuurbacteriën. ', 1.5, 'ml', 500, 100),
(36, 'Rietsuiker', 'Een natuurlijke suiker die wordt gewonnen uit suikerriet. Het heeft een lichte karamelsmaak.\r\n', 2.5, 'g', 500, 2000),
(37, 'Trassi', 'Ook bekend als belacan, een gefermenteerde garnalenpasta. Het heeft een sterke, zoute smaak.\r\n', 2.5, 'g', 100, 300),
(38, 'Koriander', 'Een kruid dat zowel de bladeren (ook wel cilantro genoemd) als de zaden (korianderzaad) omvat. De bladeren hebben een frisse, citrusachtige smaak en de orianderzaad heeft een warme, nootachtige smaak.', 1.5, 'g', 1, 1),
(39, 'Zonnebloemolie', 'Een plantaardige olie die wordt gewonnen uit de zaden van de zonnebloem. Het heeft een milde smaak ', 2.5, 'ml', 1000, 8840),
(40, 'Tomatenblokjes', 'Tomatenblokjes in een blik', 1, 'g', 400, 112),
(41, 'Gedroogde tijm', 'Een aromatisch kruid. De blaadjes hebben een volle, scherpe en karakteristieke smaak', 2.7, 'g', 50, 50),
(42, 'Kristalsuiker', 'Ook wel bekend als tafelsuiker of sacharose, een veelgebruikte zoetstof.', 1.24, 'kg', 1, 3870);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boodschappenlijst`
--

CREATE TABLE `boodschappenlijst` (
  `id` int(10) UNSIGNED NOT NULL,
  `naam` varchar(225) NOT NULL,
  `prijs_per_verpakking` varchar(225) NOT NULL,
  `verpakking` varchar(225) NOT NULL,
  `aantal` varchar(225) NOT NULL,
  `ingredienten_nodig` varchar(225) NOT NULL,
  `artikel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `boodschappenlijst`
--

INSERT INTO `boodschappenlijst` (`id`, `naam`, `prijs_per_verpakking`, `verpakking`, `aantal`, `ingredienten_nodig`, `artikel_id`, `user_id`) VALUES
(1, 'Aubergine\r\n', '1', '1', '7', '7', 1, 1),
(2, 'Extra vergine olijfolie\r\n', '4', '250', '3', '530', 2, 1),
(3, 'Passata\r\n', '1.5', '500', '4', '1600', 3, 1),
(4, 'Knoflook\r\n', '0.75', '15', '1', '8', 4, 1),
(5, 'Mozzarella\r\n', '0.9', '400', '1', '400', 5, 1),
(6, 'Parmezaanse kaas\r\n', '4', '380', '1', '200', 6, 1),
(7, 'Verse Basilicum\r\n', '2', '1', '0', '0', 7, 1),
(8, 'Gedroogde Oregano\r\n', '2.02', '5', '2', '5.034', 8, 1),
(9, 'Ui', '0.65', '1', '3', '3', 14, 1),
(10, 'Courgettes\r\n', '0.8', '1', '2', '2', 9, 1),
(11, 'Gele Pompoen\r\n', '2.5', '1', '1', '1', 10, 1),
(12, 'Rode Paprika\r\n', '1', '1', '1', '1', 11, 1),
(13, 'Gele Parika\r\n', '1', '1', '1', '1', 12, 1),
(14, 'Tomaat\r\n', '0.3', '1', '1', '1', 13, 1),
(15, 'Rode pepervlokken\r\n', '1', '100', '1', '2.5', 16, 1),
(16, 'Gedroogde tijm', '2.7', '50', '1', '5', 41, 1),
(17, 'Tomatenblokjes', '1', '400', '1', '400', 40, 1),
(18, 'Aubergine\r\n', '1', '1', '1', '1', 1, 2),
(19, 'Extra vergine olijfolie\r\n', '4', '250', '1', '30', 2, 2),
(20, 'Knoflook\r\n', '0.75', '15', '1', '4', 4, 2),
(21, 'Verse Basilicum\r\n', '2', '1', '0', '0', 7, 2),
(22, 'Gedroogde Oregano\r\n', '2.02', '5', '1', '5', 8, 2),
(23, 'Courgettes\r\n', '0.8', '1', '2', '2', 9, 2),
(24, 'Gele Pompoen\r\n', '2.5', '1', '1', '1', 10, 2),
(25, 'Rode Paprika\r\n', '1', '1', '1', '1', 11, 2),
(26, 'Gele Parika\r\n', '1', '1', '1', '1', 12, 2),
(27, 'Tomaat\r\n', '0.3', '1', '1', '1', 13, 2),
(28, 'Ui', '0.65', '1', '1', '1', 14, 2),
(29, 'Rode pepervlokken\r\n', '1', '100', '1', '2.5', 16, 2),
(30, 'Gedroogde tijm', '2.7', '50', '1', '5', 41, 2),
(31, 'Tomatenblokjes', '1', '400', '1', '400', 40, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gerecht`
--

CREATE TABLE `gerecht` (
  `id` int(11) NOT NULL,
  `keuken_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `datum_toegevoegd` date NOT NULL,
  `titel` text NOT NULL,
  `korte_omschrijving` text NOT NULL,
  `lange_omschrijving` text NOT NULL,
  `afbeelding` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gerecht`
--

INSERT INTO `gerecht` (`id`, `keuken_id`, `type_id`, `user_id`, `datum_toegevoegd`, `titel`, `korte_omschrijving`, `lange_omschrijving`, `afbeelding`) VALUES
(1, 5, 1, 1, '2024-10-01', 'Melanzane alla Parmigiana', 'Melanzane alla Parmigiana is een heerlijk comfort food dat perfect is voor een gezellige avond.', 'Melanzane alla Parmigiana is een klassiek Italiaans gerecht bestaande uit laagjes gebakken aubergine, tomatensaus, parmezaan en mozzarella. Het is een heerlijk comfort food dat perfect is voor een gezellige avond.', 'https://www.laversionedienrica.it/wp-content/uploads/2016/08/Melanzane-alla-parmigiana-11.jpg'),
(2, 6, 2, 3, '2024-10-02', 'Vegan Ratatouille\r\n', 'Ratatouille is een kleurrijk en smaakvol gerecht dat zowel warm als koud heerlijk is.\r\n', 'Ratatouille is een klassieke Franse groenteschotel die bestaat uit laagjes tomaat, courgette, aubergine en ui, gekruid met Provençaalse kruiden. Het is een kleurrijk en smaakvol gerecht dat zowel warm als koud heerlijk is.\r\n', 'https://fthmb.tqn.com/-I9qcZryRDKymcGtC-UIRnMKeDQ=/960x0/filters:no_upscale()/ratatouuille-593180be3df78c08abf2b499.jpg'),
(3, 7, 3, 5, '2024-10-03', 'Char Siu\r\n', 'Char Siu is een gerecht  met een zoete en hartige smaak.\r\n', 'Char Siu is een klassiek Chinees gerecht uit de Kantonese keuken. Het bestaat uit gemarineerd en geroosterd varkensvlees, vaak met een zoete en hartige smaak. Het vlees wordt gemarineerd in een mix van honing, vijfkruidenpoeder, sojasaus, hoisinsaus en rijstwijn, en vervolgens geroosterd tot het een glanzende, roodbruine buitenkant heeft.\r\n', 'https://images.food52.com/3CqzSnP1rh3cgCtcQrXCgT-Xhcw=/1000x1000/61344a83-2c18-4069-9777-947420f6e72b--mlee-char-siu-pork.jpg'),
(4, 8, 4, 4, '2024-10-04', 'Pepesan Ikan\r\n', 'Pepesan Ikan is een populair Indisch gerecht.\r\n', 'Pepesan Ikan is een populair Indisch gerecht waarbij vis (meestal makreel of sardines) wordt gemarineerd in een pittige kruidenpasta en vervolgens in bananenbladeren wordt gestoomd of gegrild. De marinade bevat vaak ingrediënten zoals citroengras, gember, knoflook, en chilipepers.\r\n', 'https://www.dewereldopjebord.nl/wp-content/uploads/2016/08/Ikan-pepesan-1800x1096.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gerecht_info`
--

CREATE TABLE `gerecht_info` (
  `id` int(11) NOT NULL,
  `gerecht_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `record_type` set('B','F','O','W') NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `numeriek_veld` int(11) DEFAULT NULL,
  `tekst_veld` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gerecht_info`
--

INSERT INTO `gerecht_info` (`id`, `gerecht_id`, `datum`, `record_type`, `user_id`, `numeriek_veld`, `tekst_veld`) VALUES
(2, 2, '2024-10-11', 'W', NULL, 2, NULL),
(3, 2, '2024-10-15', 'F', 5, NULL, NULL),
(4, 2, '2024-10-10', 'F', 2, NULL, NULL),
(5, 2, '2024-10-01', 'W', NULL, 4, NULL),
(8, 3, '2024-10-10', 'O', 2, NULL, 'Was heerlijk!\r\n'),
(9, 3, '2024-10-12', 'W', NULL, 3, NULL),
(10, 3, '2024-10-08', 'O', 4, NULL, 'Niet te eten.\r\n'),
(11, 1, '2024-10-11', 'B', NULL, 1, 'Voorbereiden van de aubergines:\r\n1. Snijd de aubergines in dunne plakken.\r\n2. Bestrooi de plakken met zout en laat ze ongeveer 30 minuten uitlekken in een vergiet om overtollig vocht te verwijderen.\r\n3. Spoel de aubergines af en dep ze droog met keukenpapier.'),
(12, 1, '2024-10-11', 'B', NULL, 2, 'Tomatensaus maken:\r\n1. Verhit een beetje olijfolie in een pan en fruit de ui en knoflook tot ze zacht zijn.\r\n2. Voeg de tomatenpuree toe en breng op smaak met zout en peper.\r\n3. Laat de saus ongeveer 15-20 minuten sudderen en voeg op het einde wat verse basilicumblaadjes toe.'),
(13, 1, '2024-10-11', 'B', NULL, 3, 'Aubergines bereiden:\r\n1. Verwarm de oven voor op 180°C.\r\n2. Bestrijk de aubergineplakken licht met olijfolie en leg ze op een bakplaat.\r\n3. Rooster de aubergines in de oven tot ze zacht en lichtbruin zijn, ongeveer 20-25 minuten.'),
(14, 1, '2024-10-11', 'B', NULL, 4, 'Laagjes maken:\r\n1. Vet een ovenschaal in met een beetje olijfolie.\r\n2. Begin met een laagje tomatensaus op de bodem van de schaal.\r\n3. Leg hierop een laagje aubergineplakken, gevolgd door plakjes mozzarella en een beetje Parmezaanse kaas.\r\n4. Herhaal deze lagen tot alle ingrediënten op zijn, eindig met een laag tomatensaus en een royale hoeveelheid Parmezaanse kaas.'),
(15, 1, '2024-10-11', 'B', NULL, 5, 'Bak de Melanzane alla Parmigiana in de voorverwarmde oven gedurende 30-35 minuten, of tot de kaas bubbelt en goudbruin is.'),
(16, 1, '2024-10-11', 'B', NULL, 6, 'Serveren:\r\n1. Laat de schotel een paar minuten afkoelen voordat je hem serveert.\r\n2. Garneer met extra basilicumblaadjes en geniet!'),
(17, 2, '2024-10-09', 'B', NULL, 1, 'Voorbereiden van de groenten:\r\n1. Verhit de oven voor op 180°C.\r\n2. Snijd alle groenten zoals aangegeven.'),
(18, 2, '2024-10-09', 'B', NULL, 2, 'Tomatensaus maken:\r\n1. Verhit 15 ml olijfolie (1 el) in een grote pan op middelhoog vuur.\r\n2. Voeg de ui en knoflook toe en bak tot ze zacht zijn.\r\n3. Voeg de tomatenblokjes, oregano, tijm, rode pepervlokken, zout en peper toe.\r\n4. Laat de saus 10-15 minuten sudderen.'),
(19, 2, '2024-10-09', 'B', NULL, 3, 'Groenten bereiden:\r\n1. Verhit de resterende 15 ml olijfolie (1 el) in een grote koekenpan op middelhoog vuur.\r\n2. Voeg de aubergine, courgette, gele pompoen, rode en gele paprika toe.\r\n3. Bak de groenten tot ze zacht beginnen te worden, ongeveer 10 minuten.'),
(20, 2, '2024-10-09', 'B', NULL, 4, 'Laagjes maken:\r\n1. Vet een ovenschaal in met een beetje olijfolie.\r\n2. Begin met een laagje tomatensaus op de bodem van de schaal.\r\n3. Voeg een laagje van de gebakken groenten toe.\r\n4. Herhaal deze lagen tot alle ingrediënten op zijn, eindig met een laag tomatensaus.'),
(21, 2, '2024-10-09', 'B', NULL, 5, 'Bakken:\r\nDek de ovenschaal af met aluminiumfolie en bak in de voorverwarmde oven gedurende 30 minuten.\r\nVerwijder de folie en bak nog eens 10-15 minuten, of tot de groenten zacht zijn en de saus bubbelt.'),
(22, 2, '2024-10-09', 'B', NULL, 6, 'Garneer met verse basilicumblaadjes en serveer warm.'),
(23, 3, '2024-10-12', 'B', NULL, 1, 'Marineren:\r\n1. Meng de sojasaus, hoisinsaus, Shaoxing rijstwijn, kristalsuiker, vijfkruidenpoeder, honing en knoflook in een kom.\r\n2. Snijd het varkensvlees in lange repen van ongeveer 10 cm.\r\n3. Doe het vlees in de marinade en zorg ervoor dat het goed bedekt is. Laat het minstens 8 uur, maar bij voorkeur een nacht, in de koelkast marineren.'),
(24, 3, '2024-10-12', 'B', NULL, 2, 'Verwarm de oven voor op 230°C'),
(25, 3, '2024-10-12', 'B', NULL, 3, 'Roosteren:\r\nHaal het vlees uit de marinade (bewaar de marinade) en leg het op een rooster in een braadslee.\r\nGiet een laagje water in de braadslee om te voorkomen dat de sappen verbranden.\r\nBak het vlees 25 minuten, draai het dan om en bak nog eens 15 minuten.'),
(26, 3, '2024-10-12', 'B', NULL, 4, 'Glazuur:\r\nMeng de overgebleven marinade met 1 el honing en 2 el water.\r\nBestrijk het vlees nadat het in totaal 40 minuten in de oven heeft gezeten met dit mengsel.\r\nDraai het vlees om en bestrijk de andere kant.\r\nBak nog 10 minuten.'),
(27, 3, '2024-10-12', 'B', NULL, 5, 'Serveren:\r\nLaat het vlees 10 minuten rusten voordat je het aansnijdt.\r\nServeer met gestoomde rijst en groenten.'),
(28, 4, '2024-10-09', 'B', NULL, 1, 'Voorbereiden: \r\n1. Verwarm de oven voor op 180°C. \r\n2. Snijd de sjalotten, knoflook, limoenblaadjes en gember fijn.\r\n'),
(29, 4, '2024-10-09', 'B', NULL, 2, 'Kruidenpasta maken: \r\nMeng de sjalotten, knoflook, limoenblaadjes, gember, ketjap manis, sambal, azijn, rietsuiker, trassi en zonnebloemolie in een grote kom tot een gladde pasta.\r\n'),
(30, 4, '2024-10-09', 'B', NULL, 3, 'Vis voorbereiden: \r\n1. Leg elke makreel op een stuk aluminiumfolie. \r\n2. Smeer de kruidenpasta over de vissen, zowel aan de binnen- als buitenkant.'),
(31, 4, '2024-10-09', 'B', NULL, 4, 'Inpakken: \r\nVouw de aluminiumfolie goed dicht zodat elke vis volledig is ingepakt.\r\n'),
(32, 4, '2024-10-09', 'B', NULL, 5, 'Bakken: \r\nPlaats de pakketjes in de oven en bak gedurende 20-25 minuten.\r\n'),
(33, 4, '2024-10-09', 'B', NULL, 6, 'Serveren: \r\n1. Haal de vissen uit de oven en garneer met verse koriander. \r\n2. Serveer met gestoomde rijst en groenten naar keuze.'),
(34, 2, '2024-10-11', 'F', 4, NULL, NULL),
(35, 1, '2024-10-08', 'F', 4, NULL, NULL),
(36, 1, '2024-10-11', 'W', NULL, 2, NULL),
(37, 4, '2024-10-11', 'W', NULL, 5, NULL),
(38, 1, '2024-10-15', 'O', 1, NULL, 'Ik zou dit iedere dag kunnen eten en gelukkig sterven.'),
(39, 2, '2024-10-09', 'O', 4, NULL, 'Never again'),
(40, 4, '2024-10-12', 'O', 2, NULL, 'Loved it.'),
(41, 3, '2024-10-09', 'F', 1, NULL, NULL),
(43, 1, '2024-10-09', 'F', 1, NULL, NULL),
(47, 4, '0000-00-00', 'F', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ingredieent`
--

CREATE TABLE `ingredieent` (
  `id` int(11) NOT NULL,
  `gerecht_id` int(11) NOT NULL,
  `artikel_id` int(11) NOT NULL,
  `aantal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ingredieent`
--

INSERT INTO `ingredieent` (`id`, `gerecht_id`, `artikel_id`, `aantal`) VALUES
(1, 1, 1, 3),
(2, 1, 2, 250),
(3, 1, 3, 800),
(4, 1, 4, 2),
(5, 1, 5, 200),
(6, 1, 6, 100),
(7, 1, 7, NULL),
(8, 1, 8, 0.017),
(9, 2, 1, 1),
(10, 2, 2, 30),
(11, 2, 4, 4),
(12, 2, 7, NULL),
(13, 2, 8, 5),
(14, 2, 9, 2),
(15, 2, 10, 1),
(16, 2, 11, 1),
(17, 2, 12, 1),
(18, 2, 13, 1),
(19, 2, 14, 1),
(20, 2, 16, 2.5),
(21, 3, 17, 0.6),
(22, 3, 18, 15),
(25, 3, 21, 15),
(28, 3, 24, 20),
(29, 3, 25, 20),
(31, 3, 27, 45),
(32, 3, 28, 1.25),
(33, 4, 29, 4),
(34, 4, 30, 8),
(35, 4, 4, 8),
(36, 4, 31, 10),
(37, 4, 32, 20),
(38, 4, 33, 60),
(39, 4, 34, 60),
(40, 4, 35, 30),
(41, 4, 36, 30),
(42, 4, 37, 20),
(43, 4, 38, 10),
(44, 4, 39, 60),
(45, 1, 14, 1),
(46, 2, 41, 5),
(47, 2, 40, 400),
(48, 3, 42, 0.03);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `keuken_type`
--

CREATE TABLE `keuken_type` (
  `id` int(11) NOT NULL,
  `record_type` set('T','K') NOT NULL,
  `omschrijving` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `keuken_type`
--

INSERT INTO `keuken_type` (`id`, `record_type`, `omschrijving`) VALUES
(1, 'T', 'Vegetarisch'),
(2, 'T', 'Veganistisch'),
(3, 'T', 'Vlees'),
(4, 'T', 'Vis'),
(5, 'K', 'Italiaans'),
(6, 'K', 'Frans'),
(7, 'K', 'Chinees'),
(8, 'K', 'Japans');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `e-mail` varchar(255) NOT NULL,
  `afbeelding` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `e-mail`, `afbeelding`) VALUES
(1, 'Persoon 1\r\n', '1111\r\n', 'persoon1@gmail.nl\r\n', 'https://4.bp.blogspot.com/-7Nkvle7C8RY/UBFgm7iWMkI/AAAAAAAADiU/N9spOjwczRU/s1600/hd-katten-wallpapers-een-kat-onder-een-deken-hd-achtergronden.jpg'),
(2, 'Persoon 2\r\n', '2222\r\n', 'persoon2@gmail.nl\r\n', 'https://www.onzenatuur.be/media/cache/fb_og_image/uploads/media/603410285ebd6/kat-vangt-muis.jpg'),
(3, 'Persoon 3\r\n', '3333\r\n', 'persoon3@gmail.nl\r\n', 'https://3.bp.blogspot.com/-1zYdCMyPpMo/UGyTJ1FnAyI/AAAAAAAAFT8/HHUb2x8Y_hM/s1600/hd-katten-achtergrond-met-een-jonge-kat-op-een-kast.jpg'),
(4, 'Persoon 4\r\n', '4444\r\n', 'persoon4@gmail.nl\r\n', 'https://www.nieuwekat.nl/wp-content/uploads/2020/03/15-feiten-over-katten-waardoor-je-er-meer-van-zal-houden-2-1200x675.jpg'),
(5, 'Persoon 5\r\n', '5555\r\n', 'persoon5@gmail.nl\r\n', 'https://www.myhappypet.nl/sites/nlmhp2/files/adobestock_114712922.jpeg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `artiekel`
--
ALTER TABLE `artiekel`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `boodschappenlijst`
--
ALTER TABLE `boodschappenlijst`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gerecht`
--
ALTER TABLE `gerecht`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keuken_id` (`keuken_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `gerecht_info`
--
ALTER TABLE `gerecht_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gerecht_id` (`gerecht_id`);

--
-- Indexen voor tabel `ingredieent`
--
ALTER TABLE `ingredieent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gerecht_id` (`gerecht_id`),
  ADD KEY `artikel_id` (`artikel_id`);

--
-- Indexen voor tabel `keuken_type`
--
ALTER TABLE `keuken_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `artiekel`
--
ALTER TABLE `artiekel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT voor een tabel `boodschappenlijst`
--
ALTER TABLE `boodschappenlijst`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT voor een tabel `gerecht`
--
ALTER TABLE `gerecht`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `gerecht_info`
--
ALTER TABLE `gerecht_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT voor een tabel `ingredieent`
--
ALTER TABLE `ingredieent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT voor een tabel `keuken_type`
--
ALTER TABLE `keuken_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `gerecht`
--
ALTER TABLE `gerecht`
  ADD CONSTRAINT `keuken_id` FOREIGN KEY (`keuken_id`) REFERENCES `keuken_type` (`id`),
  ADD CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `keuken_type` (`id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Beperkingen voor tabel `gerecht_info`
--
ALTER TABLE `gerecht_info`
  ADD CONSTRAINT `gerecht_info_ibfk_1` FOREIGN KEY (`gerecht_id`) REFERENCES `gerecht` (`id`);

--
-- Beperkingen voor tabel `ingredieent`
--
ALTER TABLE `ingredieent`
  ADD CONSTRAINT `artikel_id` FOREIGN KEY (`artikel_id`) REFERENCES `artiekel` (`id`),
  ADD CONSTRAINT `gerecht_id` FOREIGN KEY (`gerecht_id`) REFERENCES `gerecht` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
