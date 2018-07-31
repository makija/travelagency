-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2017 at 01:57 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agencija`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartmani`
--

CREATE TABLE `apartmani` (
  `idApartmana` int(11) NOT NULL,
  `idDestinacije` int(11) DEFAULT NULL,
  `naziv` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `opis` varchar(2048) CHARACTER SET latin1 DEFAULT NULL,
  `cover` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `galerijaSlika` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `cenovnik` varchar(3048) CHARACTER SET latin1 DEFAULT NULL,
  `uslovi` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `apartmani`
--

INSERT INTO `apartmani` (`idApartmana`, `idDestinacije`, `naziv`, `opis`, `cover`, `galerijaSlika`, `cenovnik`, `uslovi`) VALUES
(1, 3, 'Vila La luna', 'Lorem ipsum dolor sit amet, ius erant volumus et, quo vocent pertinax no, ad duo scripta efficiendi. Ne aliquid ocurreret mediocritatem nam. Cetero regione interesset te eos, ius ne stet probo offendit. Cu stet patrioque posidonium qui, his ad tale senserit, nullam percipitur mel no. Est unum adhuc in.\n\nFuisset reprimique cotidieque eos an. Mel at duis feugiat. Ludus dissentiet nec an. Eum dicit congue necessitatibus eu. Duis dissentiunt eos an, augue democritum sea et, mei no viris graeco saperet.\n\nFabellas constituam vel an, per consul interpretaris ex. Has id aperiam viderer legendos, per mazim saepe nostrud te, nulla nonumy nostrum ei eos. Quem invenire an per, mea ea omnium virtute fuisset. At pri everti accommodare. Legimus volutpat ut sea. Cum ea ignota persius, vis illud propriae id. Modus volumus verterem vis et, at mei adhuc falli aliquid, ei quo sumo gloriatur.', 'vila-la-luna.jpg', 'vila-la-luna', '<table>\n        <tr>\n            <td>Bor. od</td>\n            <td>20.05</td>\n            <td>30.05</td>\n            <td>09.06</td>\n            <td>19.06</td>\n            <td>29.06</td>\n            <td>09.07</td>\n            <td>19.07</td>\n            <td>29.07</td>\n            <td>08.08</td>\n            <td>18.08</td>\n            <td>28.08</td>\n        </tr>\n        <tr>\n            <td>Bor. do</td>\n            <td>30.05</td>\n            <td>09.06</td>\n            <td>19.06</td>\n            <td>29.06</td>\n            <td>09.07</td>\n            <td>19.07</td>\n            <td>29.07</td>\n            <td>08.08</td>\n            <td>18.08</td>\n            <td>28.08</td>\n            <td>07.09</td>\n        </tr>\n        <tr>\n            <td>1/2 app</td>\n            <td>109</td>\n            <td>159</td>\n            <td>199</td>\n            <td>229</td>\n            <td>259</td>\n            <td>289</td>\n            <td>289</td>\n            <td>289</td>\n            <td>269</td>\n            <td>209</td>\n            <td>159</td>\n        </tr>\n        <tr>\n            <td>1/3 app</td>\n            <td>115</td>\n            <td>149</td>\n            <td>169</td>\n            <td>189</td>\n            <td>219</td>\n            <td>225</td>\n            <td>225</td>\n            <td>225</td>\n            <td>199</td>\n            <td>175</td>\n            <td>135</td>\n        </tr>\n        <tr>\n            <td>1/4 app</td>\n            <td>119</td>\n            <td>159</td>\n            <td>179</td>\n            <td>199</td>\n            <td>235</td>\n            <td>255</td>\n            <td>255</td>\n            <td>255</td>\n            <td>229</td>\n            <td>195</td>\n            <td>155</td>\n        </tr>\n        <tr>\n            <td>1/4 duplex</td>\n            <td>75</td>\n            <td>105</td>\n            <td>125</td>\n            <td>139</td>\n            <td>159</td>\n            <td>195</td>\n            <td>209</td>\n            <td>209</td>\n            <td>209</td>\n            <td>195</td>\n            <td>165</td>\n        </tr>\n        <tr>\n            <td>1/5 duplex</td>\n            <td>69</td>\n            <td>85</td>\n            <td>105</td>\n            <td>119</td>\n            <td>139</td>\n            <td>175</td>\n            <td>189</td>\n            <td>189</td>\n            <td>189</td>\n            <td>175</td>\n            <td>145</td>\n        </tr>\n</table>', '  <p><strong>Napomene za cenovnik:</strong><br />&ndash; Cene označene sa zvezdicom * predstavljaju paket aranžmane (sme&scaron;taj + prevoz po osobi), sa polaskom iz Ni&scaron;a. Za ostale gradove plaća se teritorijalna doplata (naznačena u tabeli). <br />&ndash; U smenama sa zvezdicom, u slučaju sopstvenog prevoza, cena se umanjuje &ndash;25&euro;.</p>\n<p><strong>U cenu aranžmana je uračunato:</strong><br />&ndash; najam studija/apartmana na bazi izabranog broja noćenja, <br />&ndash; usluge pratioca grupe, <br />&ndash; usluge predstavnika agencije, <br />&ndash; tro&scaron;kovi organizacije putovanja .</p>\n<p><strong>U cenu aranžmana nije uračunato:</strong><br />&ndash; prevoz autobusima visoke turističke klase (TV, klima, DVD...) po cenovniku iz tabele, <br />&ndash; međunarodno putno zdravstveno osiguranje, <br />&ndash; programom nenavedene usluge, <br />&ndash; individualni i ostali tro&scaron;kovi putnika.</p>'),
(2, 2, 'Vila Laskarina', NULL, 'vila-laskarina.jpg', 'vila-laskarina', NULL, NULL),
(3, 3, 'Vila Margarita', NULL, 'vila-margarita.jpg', 'vila-margarita', NULL, NULL),
(4, 2, 'Vila Lampiris', NULL, 'vila-lampiris.jpg', 'vila-lampiris', NULL, NULL),
(5, 1, 'Vila Magic View', 'Lorem ipsum dolor sit amet, in eos prompta inermis. Vix referrentur definitiones vituperatoribus ea. No sed populo comprehensam, id omnis oportere forensibus mel. His harum dolorem id, mei oratio democritum cu. An eam elit epicurei, velit omittam cu duo.\nEirmod lucilius sententiae id nam, ea probo aliquid pri. Et mea posse eirmod, vel ea dicam hendrerit. Cu aeterno singulis neglegentur est, pro cu fugit labitur, tota inimicus in pro. Stet epicuri sit id, et everti perfecto sadipscing pri. Ei mutat verterem duo, vis an apeirian temporibus. His primis maluisset elaboraret eu, aliquip contentiones quo at.', 'vila-magic-view.jpg', 'vila-magic-view', '<table>', NULL),
(6, 5, 'Vila Stenli', '<p>Je lepaaa</p>', 'vila-stenli.jpg', 'vila-stenli', 'kost', '<p>yajebani</p>'),
(7, 13, 'Vila Pagidas', '<p>Vila Pagidas je novoizgradjena vila koja se nalazi u mirnijem delu Kalitee, udaljena je oko 450m od najlep&scaron;e plaÅ¾e. Vila ima apartmane sa dve sobe od kojih je jedna spavaÄ‡a, a u dnevnoj sobi se nalazi kompletno opremljena kuhinja (sa friÅ¾iderom, mini elektriÄnim &scaron;poretom i posuÄ‘em), klima ureÄ‘aj i televizor. </p>', 'vila-pagidas.jpg', 'vila-pagidas', 'kost', '<p><strong>Napomene za cenovnik:</strong><br />&ndash; Cene oznaÄene sa zvezdicom * predstavljaju paket aranÅ¾mane (sme&scaron;taj + prevoz po osobi), sa polaskom iz Ni&scaron;a. Za ostale gradove plaÄ‡a se teritorijalna doplata (naznaÄena u tabeli). <br />&ndash; U smenama sa zvezdicom, u sluÄaju sopstvenog prevoza, cena se umanjuje &ndash;25&euro;.</p>\r\n<p><strong>U cenu aranÅ¾mana je uraÄunato:</strong><br />&ndash; najam studija/apartmana na bazi izabranog broja noÄ‡enja, <br />&ndash; usluge pratioca grupe, <br />&ndash; usluge predstavnika agencije, <br />&ndash; tro&scaron;kovi organizacije putovanja .</p>\r\n<p><strong>U cenu aranÅ¾mana nije uraÄunato:</strong><br />&ndash; prevoz autobusima visoke turistiÄke klase (TV, klima, DVD...) po cenovniku iz tabele, <br />&ndash; meÄ‘unarodno putno zdravstveno osiguranje, <br />&ndash; programom nenavedene usluge, <br />&ndash; individualni i ostali tro&scaron;kovi putnika.</p>'),
(8, 3, 'Vila Manolas', 'nayo', 'vila-manolas.jpg', 'vila-manolas', 'bla', 'opis');

-- --------------------------------------------------------

--
-- Table structure for table `destinacije`
--

CREATE TABLE `destinacije` (
  `idDestinacije` int(11) NOT NULL,
  `idRegije` int(11) DEFAULT NULL,
  `naziv` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opis` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galerijaSlika` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `destinacije`
--

INSERT INTO `destinacije` (`idDestinacije`, `idRegije`, `naziv`, `opis`, `galerijaSlika`) VALUES
(1, 1, 'Paralija', 'Lorem ipsum dolor sit amet, sit aliquip scriptorem ne, eu ridens disputationi eam. Ea qui posse torquatos cotidieque. Vix id duis vidisse integre, alii aliquam sensibus in eos. Ius quot tempor consequat in, id ius tota bonorum nusquam, vim natum semper nostro ut. Pro brute aeterno ne, ea eam errem primis, aperiri salutandi reformidans ne est.', 'paralija'),
(2, 3, 'Pefkohori', 'Lorem ipsum dolor sit amet, sit aliquip scriptorem ne, eu ridens disputationi eam. Ea qui posse torquatos cotidieque. Vix id duis vidisse integre, alii aliquam sensibus in eos. Ius quot tempor consequat in, id ius tota bonorum nusquam, vim natum semper nostro ut. Pro brute aeterno ne, ea eam errem primis, aperiri salutandi reformidans ne est.', 'pefkohori'),
(3, 1, 'Leptokarija', '<p>Lorem ipsum dolor sit amet, sit aliquip scriptorem ne, eu ridens disputationi eam. Ea qui posse torquatos cotidieque. Vix id duis vidisse integre, alii aliquam sensibus in eos. Ius quot tempor consequat in, id ius tota bonorum nusquam, vim natum semper nostro ut. Pro brute aeterno ne, ea eam errem primis, aperiri salutandi reformidans ne est.</p>\r\n<p>Lorem ipsum dolor sit amet, sit aliquip scriptorem ne, eu ridens disputationi eam. Ea qui posse torquatos cotidieque. Vix id duis vidisse integre, alii aliquam sensibus in eos. Ius quot tempor consequat in, id ius tota bonorum nusquam, vim natum semper nostro ut. Pro brute aeterno ne, ea eam errem primis, aperiri salutandi reformidans ne est.</p>\r\n<p>&nbsp;</p>', 'leptokarija'),
(4, 1, 'Nei Pori', 'Lorem ipsum dolor sit amet, sit aliquip scriptorem ne, eu ridens disputationi eam. Ea qui posse torquatos cotidieque. Vix id duis vidisse integre, alii aliquam sensibus in eos. Ius quot tempor consequat in, id ius tota bonorum nusquam, vim natum semper nostro ut. Pro brute aeterno ne, ea eam errem primis, aperiri salutandi reformidans ne est.', 'neipori'),
(5, 3, 'Polihrono', 'Lorem ipsum dolor sit amet, sit aliquip scriptorem ne, eu ridens disputationi eam. Ea qui posse torquatos cotidieque. Vix id duis vidisse integre, alii aliquam sensibus in eos. Ius quot tempor consequat in, id ius tota bonorum nusquam, vim natum semper nostro ut. Pro brute aeterno ne, ea eam errem primis, aperiri salutandi reformidans ne est.', 'polihrono'),
(6, 1, 'Platamon', 'Lorem ipsum dolor sit amet, sit aliquip scriptorem ne, eu ridens disputationi eam. Ea qui posse torquatos cotidieque. Vix id duis vidisse integre, alii aliquam sensibus in eos. Ius quot tempor consequat in, id ius tota bonorum nusquam, vim natum semper nostro ut. Pro brute aeterno ne, ea eam errem primis, aperiri salutandi reformidans ne est.', 'platamon'),
(7, 2, 'Sivota', '<p>Sivota je carstvo za paradajIz turizam! Nije sivota, vec starVors</p>', 'sivota'),
(8, 2, 'Nea Vrasna', '\r\n  Isto sranje!', 'nea vrasna'),
(9, 2, 'Vrasna Paralija', 'Vraaaaasnaaaaaaaa\r\n  ', 'vrasna paralija'),
(10, 4, 'Sarti', '\r\n  Sarti je straaaavaaaa!!!!', 'sarti'),
(11, 5, 'Sivota', '\r\n  e divnaa\r\n', 'zivota'),
(12, 5, 'Parga', '', 'parga'),
(13, 3, 'Hanioti', '\r\n  Hanioti je leeep!', 'hanioti'),
(14, 6, 'Zakintos', '\r\n  Kornjacccccccee', 'zakintos'),
(15, 4, 'Neos Marmaras', '\r\n  acacac', 'neos marmaras'),
(16, 5, 'Lefkada', '\r\n  adadadad', 'lefkada'),
(17, 6, 'Tasos', 'Ostrvo Tasos je jedinstvene lepote izvajano harmonijom prirode i ljudi. Najsevernije je ostrvo Egeja i jedno od najlepÅ¡ih ostrva GrÄke. Bogatstvo borovom Å¡umom podarilo je ovom ostrvu naziv "Å¡uma koja pliva". Poznato je po belom mermeru i dobrom medu, kristalno Äistom moru i brojnim peÅ¡canim uvalicama na jugu ostrva, mirisnim borovim Å¡umama i interesantnim spomenicima kulture. Simfonija plavetnila i zelenila. Bezmerna svetlost. Istinski uzitak i moguÄ‡nost da se odluta... Tasos, ostrvo koje opÄinjava, veÅ¾e i zavodi i danju i noÄ‡u.\r\n\r\n', 'tasos'),
(18, 4, 'Kalamitsi', '\r\n  adadadad', 'kalamitsi'),
(19, 4, 'Psakudia', '\r\n  ddddd', 'psakudia'),
(20, 5, 'Vrahos Beach', '\r\n  vvvavavvavva', 'vrahos-beach'),
(21, 4, 'Toroni', '\r\n  cdsasfasfaff', 'toroni'),
(22, 4, 'Metarmofozis', '<p>a 95 km od Soluna, skoro na samom pocetku Sitonije, nalazi se Metamorfozis, mesto koje ce Vas, kako i sam naziv kaze, preporoditi. A kako i ne bi, kada ga s pravom nazivaju vazdu&scaron;nom banjom Halkidikija. Metamorfozis se nalazi na zapadnoj strani Sitonije, zajedno sa Neos Marmarasom, Nikitijem, i Toronijem. ÄŒetinarska &scaron;uma koje ima u izobilju stvara posebnu mikroklimu ovog mesta. Izuzetan je i park koji je idealan za prijatne &scaron;etnje u pome&scaron;anim mirisima Äetinara i mora. Okolina parka je centar de&scaron;avanja u ovom malom i mirnom mestu. Tu se nalazi vecina taverni, kafica i restorana. Ako Å¾elite da negde pobegnete od guzve i vreve onda je Metamorfozis pravi izbor.&nbsp;</p>', 'metrmofozis'),
(23, 2, 'Asprovalta', '\r\n  Asprovalta se nalazi u centralnoj Makedoniji, jednoj od 13 oblasti GrÄke, nedaleko od Ouranopolisa, i poluostrva Atos, na oko 70 km od Soluna. Asprovalta moze da se pohvali lepom peÅ¡Äanom plaÅ¾om, parkom, kejom sa drvoredom, lepim kuÄ‡ama i uredjenim ulicama. Veliki broj prodavnica, taverni, kafeterija i diskoteka uÄiniÄ‡e da VaÅ¡ odmor u Asprovalti bude ne zaboravan. Obala je nagradjvana plavom zastavom Evropske unije. PeÅ¡cana plaÅ¾a dugacka je oko 1 km, i prostire se preko Nea Vrasne sve do Stavrosa.', 'asprovalta'),
(24, 6, 'Evia', 'sacac\r\n  ', 'evia'),
(25, 6, 'Skijatos', '\r\nOstrvo Skiatos je povezano trajektom sa Volosom i sa ostrvom Skopelos. Aerodrom na ostrvu Skiatos je jedan od najmanjih u Evropi tako da su sletanja prilicno uzbudljiva. Avionska veza sa Atinom postoji tokom cele godine. Ostrvo ima samo jedan asfaltirani put koji povezuje sva cetiri naselja na njemu. Grad Skiatos je Äestim autobuskim linijama povezan sa Kukunariesom, drugim po velicini gradom na ostrvu. Pored Tasosa i Zakintosa, Skiatos je jedno od najpopularnijih grÄkih ostrva kod nas.', 'skijatos'),
(26, 4, 'Nikiti', 'Smaaaarararra\r\n  ', 'nikiti'),
(27, 4, 'Vurvuru', '\r\n  vuarauauauaduaqhy', 'vurvuru'),
(28, 4, 'Gerakini', '<p>Selo</p>', 'gerakini'),
(29, 6, 'Skopelos', '<p>Lorem ipsum dolor sit amet, vel in stet autem dignissim, ullum mediocrem in mel. Cu clita persius vim, nam id quaestio senserit torquatos. Homero cotidieque no nam, per putant deleniti id. Ei equidem invidunt accommodare pri, vel veri commune vituperata ut. Per an tritani inimicus torquatos, in mei mazim delicata. Idque salutandi id vel. Duis urbanitas ne eos, sed no saperet omittam, mei paulo salutatus scriptorem an.</p>\r\n<p>Mel graeci iracundia at, maluisset consequat per no. Sanctus explicari accommodare no his, mel at augue conclusionemque. Est imperdiet omittantur an, odio molestiae eum at. No albucius deserunt euripidis mea.</p>', 'skopelos'),
(30, 6, 'Rodos', '<p>Lorem ipsum dolor sit amet, vel in stet autem dignissim, ullum mediocrem in mel. Cu clita persius vim, nam id quaestio senserit torquatos. Homero cotidieque no nam, per putant deleniti id. Ei equidem invidunt accommodare pri, vel veri commune vituperata ut. Per an tritani inimicus torquatos, in mei mazim delicata. Idque salutandi id vel. Duis urbanitas ne eos, sed no saperet omittam, mei paulo salutatus scriptorem an.</p>\r\n<p>Mel graeci iracundia at, maluisset consequat per no. Sanctus explicari accommodare no his, mel at augue conclusionemque. Est imperdiet omittantur an, odio molestiae eum at. No albucius deserunt euripidis mea.</p>', 'rodos'),
(31, 5, 'Krf', '<p>Lorem ipsum dolor sit amet, vel in stet autem dignissim, ullum mediocrem in mel. Cu clita persius vim, nam id quaestio senserit torquatos. Homero cotidieque no nam, per putant deleniti id. Ei equidem invidunt accommodare pri, vel veri commune vituperata ut. Per an tritani inimicus torquatos, in mei mazim delicata. Idque salutandi id vel. Duis urbanitas ne eos, sed no saperet omittam, mei paulo salutatus scriptorem an.</p>\r\n<p>Mel graeci iracundia at, maluisset consequat per no. Sanctus explicari accommodare no his, mel at augue conclusionemque. Est imperdiet omittantur an, odio molestiae eum at. No albucius deserunt euripidis mea.</p>', 'krf');

-- --------------------------------------------------------

--
-- Table structure for table `regije`
--

CREATE TABLE `regije` (
  `idRegije` int(11) NOT NULL,
  `naziv` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opis` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galerijaSlika` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regije`
--

INSERT INTO `regije` (`idRegije`, `naziv`, `opis`, `galerijaSlika`, `cover`) VALUES
(1, 'Olimpska regija', '<p>Lorem ipsum dolor sit amet, usu eligendi conceptam in. Pro vide nonumes ad, ad vim audiam labores explicari. Duo unum appellantur ut, quidam scripserit ea usu. Te per alia nonumy, an mea dico minim. Vis at magna adolescens. Labores liberavisse interpretaris his id.</p>\r\n<p>Te impetus consulatu ullamcorper per, nam id diam alia. Sensibus repudiandae has no. Meis invenire his ad, has te nihil facilis. Eam cu diceret corrumpit, ad nec amet aeque. Magna fuisset mea in, per eu option aliquando. Propriae eleifend his id, nibh menandri reprehendunt et qui, ne sed vide numquam.</p>\r\n<p>Adhuc homero cetero eu usu, mel tamquam maiorum urbanitas at. Sit decore apeirian intellegat id, te quot pericula per, ad sed libris tacimates posidonium. Eos ea eirmod repudiare delicatissimi. Ut ferri mandamus euripidis qui, eu usu utinam nominavi mnesarchum. Ius graecis adipisci ut, ne usu epicurei perpetua. An duo ullum iisque pericula, ad pro facer conclusionemque, soleat civibus eu est.</p>', 'olimpskaRegija', 'olimpska.jpg'),
(2, 'Strimonikos', '<p>Ooljpojpojopjdmor.</p>', 'strimonikos', 'strimonikos.jpg'),
(3, 'Kasandra', '<p>Kasandra je divna regija</p>\r\n<p>&nbsp;</p>\r\n<p>jdahdkah</p>', 'kasandra', 'kasandra.jpg'),
(4, 'Sitonija', 'Sitonija ', 'sitonija', 'sitonija.jpg'),
(5, 'Jonsko more', '<p>tolllikoaooaoaoao</p>', 'jonskoMore', 'jonsko.jpg'),
(6, 'Ostrva', NULL, 'ostrva', 'ostrva.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `naziv` varchar(2048) CHARACTER SET latin1 DEFAULT NULL,
  `galerija` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `cover` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `naziv`, `galerija`, `cover`) VALUES
(1, 'Bla', 'Bla bla', 'bla bla bla'),
(2, 'test1', 'test2', 'test123'),
(3, 'jjjj', '', ''),
(4, '<p>svvsvs</p>', '', ''),
(5, '', '', ''),
(6, '', '', ''),
(7, '', '', ''),
(8, '', '', ''),
(9, '', '', ''),
(10, '', '', ''),
(11, '<p>csacaascsa</p>', '', ''),
(12, '<p>ssdsdsdsd</p>', '', ''),
(13, '<table style="height: 153px;" width="437">\r\n<tbody>\r\n<tr>\r\n<td style="width: 80px;">598123</td>\r\n<td style="width: 80px;">6565</td>\r\n<td style="width: 81px;">64564</td>\r\n<td style="width: 81px;">&nbsp;</td>\r\n<td style="width: 81px;">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 80px;">1223</td>\r\n<td style="width: 80px;">223232</td>\r\n<td style="width: 81px;">65</td>\r\n<td style="width: 81px;">&nbsp;</td>\r\n<td style="width: 81px;">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 80px;">3</td>\r\n<td style="width: 80px;">66464</td>\r\n<td style="width: 81px;">859</td>\r\n<td style="width: 81px;">&nbsp;</td>\r\n<td style="width: 81px;">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 80px;">3</td>\r\n<td style="width: 80px;">464</td>\r\n<td style="width: 81px;">4</td>\r\n<td style="width: 81px;">&nbsp;</td>\r\n<td style="width: 81px;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', ''),
(14, '<table>\r\n<tbody>\r\n<tr>\r\n<td>598123</td>\r\n<td>6565</td>\r\n<td>64564</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>1223</td>\r\n<td>223232</td>\r\n<td>65</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>66464</td>\r\n<td>859</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>464</td>\r\n<td>4</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', ''),
(15, '<table>\r\n<tbody>\r\n<tr>\r\n<td>123</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1212</td>\r\n<td>21</td>\r\n<td>11221</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>1</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>211</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>2</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', ''),
(16, '', '', ''),
(17, '<table>\r\n<tbody>\r\n<tr>\r\n<td>123</td>\r\n<td>&nbsp;</td>\r\n<td>kv dslkv ,/</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>sdvsv</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>svsv</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `userName` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `token` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `userName`, `password`, `token`) VALUES
(1, 'marija', '123', NULL),
(2, 'bokica', '321', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartmani`
--
ALTER TABLE `apartmani`
  ADD PRIMARY KEY (`idApartmana`);

--
-- Indexes for table `destinacije`
--
ALTER TABLE `destinacije`
  ADD PRIMARY KEY (`idDestinacije`);

--
-- Indexes for table `regije`
--
ALTER TABLE `regije`
  ADD PRIMARY KEY (`idRegije`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartmani`
--
ALTER TABLE `apartmani`
  MODIFY `idApartmana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `destinacije`
--
ALTER TABLE `destinacije`
  MODIFY `idDestinacije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `regije`
--
ALTER TABLE `regije`
  MODIFY `idRegije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
