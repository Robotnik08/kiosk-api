-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 10:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiosk-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `description`, `img_url`, `category_id`) VALUES
(85, 'Brown bread', 'Brown bread', 'dummy.jpg', 1),
(86, 'White bread', 'White bread', 'dummy.jpg', 1),
(87, 'Italian bread', 'Italian bread', 'dummy.jpg', 1),
(88, 'Italian herbs & cheese bread', 'Italian herbs & cheese bread', 'dummy.jpg', 1),
(89, 'Honey oat bread', 'Honey oat bread', 'dummy.jpg', 1),
(90, 'Flatbread', 'Flatbread', 'dummy.jpg', 1),
(91, 'Wrap', 'Wrap', 'dummy.jpg', 1),
(92, 'Salad', 'Salad', 'dummy.jpg', 1),
(93, 'Cheddar cheese', 'Cheddar cheese', 'dummy.jpg', 2),
(94, 'American cheese', 'American cheese', 'dummy.jpg', 2),
(95, 'Pepperjack cheese', 'Pepperjack cheese', 'dummy.jpg', 2),
(96, 'Mozzarella cheese', 'Mozzarella cheese', 'dummy.jpg', 2),
(97, 'Vegan cheese', 'Vegan cheese', 'dummy.jpg', 2),
(98, 'Lettuce', 'Lettuce', 'dummy.jpg', 2),
(99, 'Tomato', 'Tomato', 'dummy.jpg', 2),
(100, 'Cucumber', 'Cucumber', 'dummy.jpg', 2),
(101, 'Red onion', 'Red onion', 'dummy.jpg', 2),
(102, 'Pickles', 'Pickles', 'dummy.jpg', 2),
(103, 'Jalapeno', 'Jalapeno', 'dummy.jpg', 2),
(104, 'Sweet onion', 'Sweet onion', 'dummy.jpg', 2),
(105, 'Green pepper', 'Green pepper', 'dummy.jpg', 2),
(106, 'Red pepper', 'Red pepper', 'dummy.jpg', 2),
(107, 'Black olives', 'Black olives', 'dummy.jpg', 2),
(108, 'Crispy onions', 'Crispy onions', 'dummy.jpg', 2),
(109, 'Crispy bacon', 'Crispy bacon', 'dummy.jpg', 2),
(110, 'Pepperoni', 'Pepperoni', 'dummy.jpg', 2),
(111, 'Salami', 'Salami', 'dummy.jpg', 2),
(112, 'Ham', 'Ham', 'dummy.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `description`, `img_url`, `category_id`) VALUES
(381, 'Legendary Teriyaki', 'Chicken Teriyaki, dubbele portie American Cheese, sla, tomaat, komkommer, rode paprika, rode ui, mais, Sweet Onion saus. Geserveerd op Sesam brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/SignatureSeries_LegendaryTeriyaki_594x334px.jpg', 980),
(382, 'Legendary Teriyaki Plant-Based', 'Plant - Based Chicken Teriyaki, dubbele portie American Cheese, sla, tomaat, komkommer, rode paprika, rode ui, mais, Sweet Onion saus. Geserveerd op Sesam brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/SignatureSeries_LegendaryTeriyakPlantBased_594x334px.jpg', 980),
(383, 'Fiesta Fajita', 'Chicken Fajita, dubbele portie Pepperjack kaas, guacamole, sla, rode paprika, rode ui, mais, jalapenos, Doritos, Chipotle Southwest saus. Geserveerd op Italian Herbs & Cheese brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/9043_WT_Subway-Series_594x334_Website_FiestaFajita.jpg', 980),
(384, 'The Captain', 'Tonijn, dubbele portie Pepperjack kaas, sla, semi-gedroogde tomaat, komkommer, rode paprika, rode ui, mais, Lite Mayonnaise. Geserveerd op Meergranen brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/SignatureSeries_TheCaptain_594x334px.jpg', 980),
(385, 'Chicken Amore', 'Rotisserie Style Chicken, semi-gedroogde tomaat, Roomkaas, American Cheese, Mozzarella, Rode Paprika, Rode ui, Semi-gedroogde tomaten en Pesto.', 'https://www.subway.com/ns/images/menu/NET/DUT/SignatureSeries_ChickenAmore_594x334px.jpg', 980),
(386, 'Mighty B.M.T.®', 'Ham, salami, pepperoni, dubbele portie Pepperjack kaas, sla, tomaat, rode ui, komkommer, Vegan Garlic Aioli. Geserveerd op Wit brood..', 'https://www.subway.com/ns/images/menu/NET/DUT/SignatureSeries_MightyBMT_594x334px.jpg', 980),
(387, 'Steakhouse Desire', 'American Steakhouse beef patty, bacon, Pepperjack kaas, American Cheese, gekarameliseerde rode ui, sla, tomaat, augurk, Chipotle Southwest saus. Geserveerd op Sesam brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/SignatureSeries_SteakhouseDesire_594x334px.jpg', 980),
(388, 'Clubhouse', 'Ham, kalkoen, bacon, roomkaas, American Cheese, komkommer, sla, augurk, tomaat, rode ui, Honing Mosterd saus. Geserveerd op Wit brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/9043_WT_Subway-Series_594x334_Website_Clubhouse.jpg', 980),
(389, 'The Steak Master', 'Steak, bacon, dubbele portie Pepperjack kaas, rode paprika, rode ui, sla, tomaat, truffelsaus. Geserveerd op Italian Herbs & Cheese brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/SignatureSeries_TheSteakMaster_594x334px.jpg', 980),
(390, 'Grand Cheesesteak', 'Steak, mozzarella, dubble portie American Cheese, gekarameliseerde rode ui, rode paprika, Chipotle Soutwest saus.', 'https://www.subway.com/ns/images/menu/NET/DUT/SubMelts_GrandCheesesteak_594x334px.jpg', 1054),
(391, 'Chick\'n\'Garlic', 'Rotisserie Style Chicken, bacon, mozzarella, dubbele portie American Cheese, gekarameliseerde rode ui, rode paprika, Vegan Garlic Aioli.', 'https://www.subway.com/ns/images/menu/NET/DUT/SubMelts_ChickNGarlic_594x334px.jpg', 1054),
(392, 'Big Mamma Mia', 'Salami, pepperoni, mozzarella, dubbele portie American Cheese, rode paprika, rode ui, Chipotle Southwest saus.', 'https://www.subway.com/ns/images/menu/NET/DUT/SubMelts_BigMammaMia_594x334px.jpg', 1054),
(393, 'Amore Mio', 'Roomkaas, American Cheese, Mozzarella, Rode Paprika, Rode Ui, Semi-gedroogde tomaten en Pesto.', 'https://www.subway.com/ns/images/menu/NET/DUT/SubMelts_AmoreMio_594x334px.jpg', 1054),
(394, 'American Steakhouse Melt', 'Ga voor big flavours met malse gegrilde beef, smaakvolle kaas en saus naar keuze. En op getoast brood pak je ook nog eens die extra bite.', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_American_Steakhouse_Melt_WC_sRGB_594x334.jpg', 396),
(395, 'Italian B.M.T.®', 'Plakjes salami, pepperoni, ham, ok vooruit wat knapperige sla en tomaat erbij. Fantastico!', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Italian_BMT_WC_sRGB_594x334.jpg', 396),
(396, 'Chicken Teriyaki', 'Malse kip met Teriyaki glace op een lekkere verse Sub.', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Chicken_Teriyaki_WC_sRGB_594x334.jpg', 396),
(397, 'Chicken Fajita', 'Proef Mexico op je Sub: malse Mexicaans gekruide kip en knapperige groenten op een vers broodje. Caramba!', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Chicken_Fajita_WC_sRGB_594x334.jpg', 396),
(398, 'Ham', 'Heerlijke ham die nog lekkerder wordt met zoveel verse groenten als je zelf wilt. Hammmm.', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Ham_WC_sRGB_594x334.jpg', 396),
(399, 'Rotisserie Style Chicken', 'Kip op z\'n Subways. Ruim belegd met malse Rotisserie Style Chicken. Heerlijk in combinatie met knapperige groenten op versgebakken brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/SELangkoktKycklingbrost15cmSub594x334.jpg', 396),
(400, 'Spicy Italian', 'Laat je verrassen door de heetste onder de Subs: pittige pepperoni en salami op versgebakken brood. Maak \'m zo spicy als je zelf aankan met onze Jalapeño-pepers.', 'https://www.subway.com/ns/images/menu/NET/DUT/Spicy_Italian_15cm_scored_SOTD_Friday_594x334.jpg', 396),
(401, 'Spicy Steak & Bacon Melt', 'Je wilde een bite? Krijg je een bite. Pittige steak met knapperige bacon en peperoni, op versgebakken brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Spicy_Steak___Bacon_Melt_WC_sRGB_594x334.jpg', 396),
(402, 'Steak & Cheese', 'Ga hier maar even voor zitten. Gegrilde rundvlees-reepjes met paprika, ui en kruiden, en een plak heerlijke gesmolten kaas.', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Steak___Cheese_WC_sRGB_594x334.jpg', 396),
(403, 'Subway Melt™', 'We smelten de kazen! Maar niet nadat we je Sub belegd hebben met heerlijk zachte kalkoenfilet, ham en bacon. Allemaal met gesmolten kaas. Allemaal op jouw favoriete brood. Met groenten naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Turkey_Ham___Bacon_Melt_WC_sRGB_594x334.jpg', 396),
(404, 'Kalkoen Filet', 'Malse stukjes kalkoenfilet, vol van smaak. Maak deze Sub helemaal af met jouw favoriete groenten en versgebakken brood naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Lordag_Turkey_594x334_nl.jpg', 396),
(405, 'T.L.C. Teriyaki', 'De Chicken Teriyaki, nu ook Plant Based verkrijgbaar!', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Meatless_Chicken_Teriyaki_WC_sRGB_594x334.jpg', 396),
(406, 'Tonijn', 'Smeuïge tonijnsalade bereid met de beste mayonaise. Afgemaakt met heerlijk frisse salade naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Tuna_WC_sRGB_594x334.jpg', 396),
(407, 'Vegan Patty', 'Wie zegt dat vegan smaak mist moet \'m nú proberen. Een heerlijke spicy groenteburger uiteraard met onze rijke selectie van knapperige groenten.', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Spicy_Vegan_Patty_WC_sRGB_594x334.jpg', 396),
(408, 'Veggie Delite®', 'Go green! Een heerlijke Sub met het beste van onze groenten op versgebakken brood. Fris, light en je kan er weer tegenaan!', 'https://www.subway.com/ns/images/menu/NET/DUT/15cm_Veggie_Delite_WC_sRGB_594x334.jpg', 396),
(409, 'American Steakhouse Melt', 'Ga voor big flavours met malse gegrilde beef, smaakvolle kaas en saus naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_American_Steakhouse_Melt_WC_sRGB_594x334.jpg', 710),
(410, 'Italian B.M.T.®', 'Plakjes salami, pepperoni, ham, ok vooruit wat knapperige sla en tomaat erbij. Fantastico!', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_BMT_WC_sRGB_594x334.jpg', 710),
(411, 'Chicken Teriyaki', 'Malse kip in Teriyaki glace in een lekkere verse wrap.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Chicken_Teriyaki_WC_sRGB_594x334.jpg', 710),
(412, 'Chicken Fajita', 'Proef Mexico op je wrap: malse Mexicaans gekruide kip en knapperige groenten. Caramba!', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Chicken_Fajita_WC_sRGB_594x334.jpg', 710),
(413, 'Ham', 'Heerlijke ham die nog lekkerder wordt met zoveel verse groenten als je zelf toe wilt voegen. Hammmm.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Ham_WC_sRGB_594x334.jpg', 710),
(414, 'Rotisserie Style Chicken', 'Kip op z\'n Subways. Wrap met malse Rotisserie Style Chicken. Heerlijk in combinatie met knapperige groenten op versgebakken brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/SE-LangkoktKycklingbrostWrap594x334.jpg', 710),
(415, 'Spicy Steak & Bacon Melt', 'Je wilde een bite? Krijg je een bite. Pittige steak met knapperige bacon en peperoni.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Spicy_Steak_Bacon_Melt_WC_sRGB_594x334.jpg', 710),
(416, 'Steak & Cheese', 'Ga hier maar even voor zitten. Gegrilde rundvlees-reepjes met paprika, ui en kruiden, en een plak heerlijke gesmolten kaas.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Steak_Cheese_WC_sRGB_594x334.jpg', 710),
(417, 'Kalkoen Filet', 'Malse stukjes kalkoenfilet, vol van smaak. Maak deze wrap helemaal af met jouw favoriete groenten en versgebakken brood naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Turkey_WC_sRGB_594x334.jpg', 710),
(418, 'Tonijn', 'Smeuïge tonijnsalade bereid met de beste mayonaise. Afgemaakt met heerlijk frisse groenten naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Tuna_WC02_sRGB_594x334.jpg', 710),
(419, 'Vegan Patty', 'Wie zegt dat vegan smaak mist moet \'m nú proberen. Een heerlijke spicy groenteburger uiteraard met onze rijke selectie van knapperige groenten.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Spicy_Vegan_Patty_WC_sRGB_594x334.jpg', 710),
(420, 'Veggie Delite®', 'Go green! Een heerlijke wrap met het beste van onze groenten. Fris, light en je kan er weer tegenaan!', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Veggie_Delite_WC_sRGB_594x334.jpg', 710),
(421, 'Spicy Italian', 'Laat je verrassen door de heetste onder de wraps: met pittige pepperoni en salami. Maak \'m zo spicy als je zelf aankan met Jalapeño-pepers.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Spicy_Italian_WC_sRGB_594x334.jpg', 710),
(422, 'Subway Melt (Turkey ham & bacon)', 'We smelten de kazen! Maar niet nadat we je wrap belegd hebben met heerlijk zachte kalkoenfilet, ham en bacon. Allemaal met gesmolten kaas. En met knapperige groenten naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Wrap_Turkey_Ham_WC_sRGB_234x140.jpg', 710),
(423, 'American Steakhouse Melt', 'Ga voor big flavours met malse gegrilde beef, smaakvolle kaas en saus naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_American_Steakhouse_Melt_WC_sRGB_594x334.jpg', 398),
(424, 'Italian B.M.T.®', 'Salami, pepperoni, ham, aangevuld met knapperige sla, tomaat, ui en meer vanje favoriete groenten. Fantastico!', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Italian_BMT_WC_sRGB_594x334.jpg', 398),
(425, 'Chicken Teriyaki', 'Malse kip in Teriyaki glace met heerlijk frisse groenten.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Chicken_Teriyaki_WC_sRGB_594x334.jpg', 398),
(426, 'Chicken Fajita', 'Proef Mexico in je salade: malse Mexicaans gekruide kip en heerlijk frisse knapperige groenten. Caramba!', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Chicken_Fajita_WC_sRGB_594x334.jpg', 398),
(427, 'Ham', 'Heerlijke ham die nog lekkerder wordt met zoveel verse groenten als je zelf wilt. Hammmm.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Ham_WC_sRGB_594x334.jpg', 398),
(428, 'Rotisserie Style Chicken', 'Salade op z\'n Subways. Goed gevuld met malse Rotisserie Style Chicken. Aangevuld met al jouw favoriete groenten.', 'https://www.subway.com/ns/images/menu/NET/DUT/SE-LangkoktKycklingbrostSallad594x334.jpg', 398),
(429, 'Spicy Steak & Bacon Melt', 'Je wilde een bite? Krijg je een bite. Pittige steak met knapperige bacon en peperoni, in een frisse salade.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Spicy_Steak___Bacon_Melt_WC_sRGB_594x334.jpg', 398),
(430, 'Steak & Cheese', 'Ga hier maar even voor zitten. Een rijke salade met gegrilde rundvlees-reepjes met paprika, ui en kruiden, en heerlijke gesmolten kaas.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Steak___Cheese_WC_sRGB_594x334.jpg', 398),
(431, 'Subway Melt®', 'We smelten de kazen! Maar niet nadat we je salade rijk gevuld hebben met heerlijk zachte kalkoenfilet, ham en bacon. Met gesmolten kaas en je favoriete groenten.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Turkey_Ham___Bacon_Melt_WC_sRGB_594x334.jpg', 398),
(432, 'Kalkoen Filet', 'Malse plakjes kalkoenfilet, vol van smaak. Maak deze salade helemaal af met jouw favoriete groenten.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Turkey_WC_sRGB_594x334.jpg', 398),
(433, 'Tonijn', 'Smeuïge tonijnsalade bereid met de beste mayonaise. Afgemaakt met heerlijk frisse groenten naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Tuna_WC_sRGB_594x334.jpg', 398),
(434, 'Vegan Patty', 'Wie zegt dat vegan smaak mist moet \'m nú proberen. Een heerlijke spicy groenteburger met een rijke selectie aan knapperige groenten.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Spicy_Vegan_Patty_WC_sRGB_594x334.jpg', 398),
(435, 'Veggie Delite®', 'Go green! Een heerlijke salade met het beste van onze verse groenten. Fris, light en je kan er weer tegenaan!', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Veggie_Delite_WC_sRGB_594x334.jpg', 398),
(436, 'Spicy Italian', 'Laat je verrassen door de heetste onder de salades: pittige pepperoni, salami en al je favoriete groenten erbij. Maak \'m zo spicy als je zelf aankan met onze Jalapeño-pepers.', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Spicy_Italian_WC_sRGB_594x334.jpg', 398),
(437, 'Turkey and Ham', 'Alles behalve het brood! Maak van elke favoriete Sub een salade. Voeg knapperigheid toe met sla, rode uien, tomaten, komkommer en nog veel meer!', 'https://www.subway.com/ns/images/menu/NET/DUT/Salad_Turkey___Ham_WC_sRGB_594x334.jpg', 398),
(438, 'Nacho Chicken', 'De Nacho Chicken, een heerlijke Sub met Chicken Triangles, sla, tomaat, rode ui en Chipotle saus.', 'https://www.subway.com/ns/images/menu/NET/DUT/Nacho-chicken-594x334.png', 1053),
(439, 'BBLT', 'Dubbel bacon, sla, tomaat en Lite Mayo. De BBLT, een echte classic!', 'https://www.subway.com/ns/images/menu/NET/DUT/BBLTSub594x334.jpg', 1053),
(440, 'Italian Veggie', 'De Italian Veggie, voor jou gemaakt met Roomkaas, sla, komkommer, semi-gedroogde tomaten, rode paprika en Pesto.', 'https://www.subway.com/ns/images/menu/NET/DUT/Italian-Veggie-594x334.png', 1053),
(441, 'Ei & Kaas', 'Verukkelijke omelet en gesmolten kaas op versgebakken brood. Da\'s nog eens fijn wakker worden.', 'https://www.subway.com/ns/images/menu/NET/DUT/Footlongs_Breakfast_Sub_Egg_and_Cheese_WC_sRGB_594x334.jpg', 397),
(442, 'Bacon, Ei & Kaas', 'Crispy bacon op een omelet met gesmolten kaas. Laat die dag maar komen.', 'https://www.subway.com/ns/images/menu/NET/DUT/Footlongs_Breakfast_Sub_Bacon_Egg_and_Cheese_WC_sRGB_594x334.jpg', 397),
(443, 'Ham, Ei & Kaas', 'Een lekkere start van je dag. Heerlijk ham, een omeletje met gesmolten kaas, alles op versgebakken brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/Footlongs_Breakfast_Sub_Ham_Egg_and_Cheese_WC_sRGB_594x334.jpg', 397),
(444, 'Steak, Ei & Kaas', 'Het powerontbijt bij uitsteak, eh uitstek! Malse steak met een lekker eitje en gesmolten kaas. Go go go!', 'https://www.subway.com/ns/images/menu/NET/DUT/Footlongs_Breakfast_Sub_Steak_Egg_and_Cheese_WC_sRGB_594x334.jpg', 397),
(445, 'Ham', 'Happen naar heerlijke ham met deze Mini Sub speciaal voor kids.', 'https://www.subway.com/ns/images/menu/NET/DUT/Kidspack_Ham_WC_sRGB_594x334.jpg', 399),
(446, 'Kalkoen Filet', 'Stil je trek met malse kalkoen en knapperige groenten op deze Mini Sub.', 'https://www.subway.com/ns/images/menu/NET/DUT/Kidspack_Turkey_WC_sRGB_594x334.jpg', 399),
(447, 'Veggie Delite®', 'Veggie is voor jong en oud. Een gezonde Mini Sub met superveel groenten op vers brood.', 'https://www.subway.com/ns/images/menu/NET/DUT/Kidspack_VeggieDelite_WC_sRGB_594x334.jpg', 399),
(448, 'Chicken Filet', 'Kip voor kids, op z\'n Subways. Mini Sub met heel veel malse kipfilet.', 'https://www.subway.com/ns/images/menu/NET/DUT/Kidspack_ChickenFilet_WC_sRGB_594x334.jpg', 399),
(449, 'Chips', 'Zo heerlijk als onze Subs zijn, zijn ze nog beter in combinatie met een drankje, cookie, chips of iets anders exta\'s. Er is keuze genoeg, dus voor ieder wat wils.', 'https://www.subway.com/ns/images/menu/NET/DUT/RPLC-lays-salted-NL-594x334.jpg', 400),
(450, 'Cookies', 'Zo heerlijk als onze Subs zijn, zijn ze nog beter in combinatie met een drankje, cookie, chips of iets anders exta\'s. Er is keuze genoeg, dus voor ieder wat wils.', 'https://www.subway.com/ns/images/menu/NET/DUT/Snack_SubwayCookies12x_Top_WC_sRGB_594x334.jpg', 400),
(451, 'Chicken Triangles 4st', 'Een hartige bite van kip omhuld met tortilla, geserveerd met een dip naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Snack_Triangles9xtop_WC_sRGB_594x334.jpg', 400),
(452, 'Potato Bites', 'Verse aardappel wedges met een Chipothle Southwest seasoning.', 'https://www.subway.com/ns/images/menu/NET/DUT/Snack_Potato_Bites230gr_Seasoning_WC_sRGB_594x334.jpg', 400),
(453, 'Side Salad', 'Een kleine salade van sla, komkommer en tomaat, geserveerd met een dressing naar keuze.', 'https://www.subway.com/ns/images/menu/NET/DUT/Snack_Side_Salad_Front_WC_sRGB_594x334.jpg', 400),
(454, 'Donut Dots', 'Een zoete traktatie gemaakt van donut deeg, omhuld met witte- óf melk chocolade.', 'https://www.subway.com/ns/images/menu/NET/DUT/Snack_Donut_Dots_WC_sRGB_594x334.jpg', 400),
(455, '12 Cookies (3 van elke smaak)', 'Zeg niet dat we je niet gewaarschuwd hebben, ze zijn namelijk onweerstaanbaar. Neem een cookie als toetje of gewoon zo.', 'https://www.subway.com/ns/images/menu/NET/DUT/cookiebox_594x334.jpg', 400),
(456, 'Diverse dranken', 'Zo heerlijk als onze Subs zijn, zijn ze nog beter in combinatie met een drankje, cookie, chips of iets anders exta\'s. Er is keuze genoeg, dus voor ieder wat wils.', 'https://www.subway.com/ns/images/menu/NET/DUT/7453_OW_banners_594x334_drinks.jpg', 400);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `OrderDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `OrderDate`) VALUES
(3, '2024-05-14 00:00:00'),
(4, '2024-05-14 00:00:00'),
(5, '2024-05-14 11:54:04'),
(6, '2024-05-14 11:54:09'),
(7, '2024-05-14 11:54:09'),
(8, '2024-05-14 11:54:10'),
(9, '2024-05-14 11:54:10'),
(10, '2024-05-14 11:54:30'),
(11, '2024-05-14 11:54:31'),
(12, '2024-05-14 11:54:31'),
(13, '2024-05-14 11:54:32'),
(14, '2024-05-14 11:54:33'),
(15, '2024-05-14 11:55:53'),
(16, '2024-05-14 11:55:54'),
(17, '2024-05-14 11:55:54'),
(18, '2024-05-14 11:55:58'),
(19, '2024-05-14 11:55:59'),
(20, '2024-05-14 11:56:00'),
(21, '2024-05-14 11:56:00'),
(22, '2024-05-14 11:56:01'),
(23, '2024-05-14 11:56:01'),
(24, '2024-05-14 11:56:50'),
(25, '2024-05-14 11:57:51'),
(26, '2024-05-14 11:59:09'),
(27, '2024-05-14 11:59:25'),
(28, '2024-05-14 12:00:00'),
(29, '2024-05-14 12:00:01'),
(30, '2024-05-14 12:00:02'),
(31, '2024-05-14 12:00:05'),
(32, '2024-05-14 12:02:56'),
(33, '2024-05-14 12:02:57'),
(34, '2024-05-14 12:02:57'),
(35, '2024-05-14 12:02:58'),
(36, '2024-05-14 12:02:58'),
(37, '2024-05-14 12:02:59'),
(38, '2024-05-14 12:02:59'),
(39, '2024-05-14 12:03:00'),
(40, '2024-05-14 12:03:00'),
(41, '2024-05-14 12:03:01'),
(42, '2024-05-14 12:03:01'),
(43, '2024-05-14 12:03:07'),
(44, '2024-05-14 12:06:14'),
(45, '2024-05-14 12:12:57'),
(46, '2024-05-14 12:16:21'),
(47, '2024-05-14 12:16:44'),
(48, '2024-05-14 12:16:52'),
(49, '2024-05-14 12:16:55'),
(50, '2024-05-14 12:17:45'),
(51, '2024-05-14 12:18:34'),
(52, '2024-05-14 12:18:52'),
(53, '2024-05-14 12:19:04'),
(54, '2024-05-14 12:19:25'),
(55, '2024-05-14 12:19:26'),
(56, '2024-05-14 12:19:27'),
(57, '2024-05-14 12:20:24'),
(58, '2024-05-14 12:22:20'),
(59, '2024-05-14 12:24:05'),
(60, '2024-05-14 12:24:40'),
(61, '2024-05-14 12:24:41'),
(62, '2024-05-14 12:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(47, 60, 381, 2),
(48, 60, 383, 1),
(49, 61, 381, 2),
(50, 61, 383, 1),
(51, 62, 381, 2),
(52, 62, 383, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductID` (`product_id`),
  ADD KEY `orderdetails_ibfk_1` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `menu_items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
