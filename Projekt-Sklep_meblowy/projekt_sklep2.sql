-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Maj 2019, 18:47
-- Wersja serwera: 10.1.22-MariaDB
-- Wersja PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt_sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`id`, `nazwa`) VALUES
(1, 'Kuchnia'),
(2, 'Lazienka'),
(3, 'Salon'),
(4, 'Jadalnia'),
(5, 'Sypialnia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `ilosc_produktow` int(11) NOT NULL,
  `id_promocji` int(11) DEFAULT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `koszyk`
--

INSERT INTO `koszyk` (`id`, `id_uzytkownika`, `product_id`, `ilosc_produktow`, `id_promocji`, `data`) VALUES
(39, 3, 1, 3, NULL, '2019-05-14 19:16:54'),
(40, 3, 6, 2, NULL, '2019-05-14 19:27:35'),
(41, 3, 3, 1, NULL, '2019-05-14 19:28:23'),
(44, 3, 20, 1, NULL, '2019-05-14 20:04:17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podkategoria`
--

CREATE TABLE `podkategoria` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_kategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `podkategoria`
--

INSERT INTO `podkategoria` (`id`, `nazwa`, `id_kategoria`) VALUES
(1, 'Krzesla_Kuchenne', 1),
(2, 'Stoly_Kuchenne', 1),
(3, 'Szafki_Kuchenne', 1),
(4, 'Blaty_Kuchenne', 1),
(5, 'Akcesoria_Kuchenne', 1),
(6, 'Lustra_Lazienkowe', 2),
(7, 'Umywalki_Lazienkowe', 2),
(8, 'Szafki_Lazienkowe', 2),
(9, 'Akcesoria_Lazienkowe', 2),
(10, 'Stoly_Salonowe', 3),
(11, 'Regaly_Salonowe', 3),
(12, 'Szafy_Salonowe', 3),
(13, 'Narozniki_Salonowe', 3),
(14, 'Krzesla_Salonowe', 3),
(15, 'Stoly_Jadalnia', 4),
(16, 'Krzesla_Jadalnia', 4),
(17, 'Komody_Jadalnia', 4),
(18, 'Witryny_Jadalnia', 4),
(19, 'Lozka_Sypialnia', 5),
(20, 'Materace_Sypialnia', 5),
(21, 'Szafy_Sypialnia', 5),
(22, 'Komody_Sypialnia', 5),
(23, 'Lustra_Sypialnia', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `id_zdjec` varchar(15) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `id_opisu_zdj` text COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwa` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `opis` text CHARACTER SET utf8 NOT NULL,
  `parametry` text CHARACTER SET utf8 NOT NULL,
  `cena` float NOT NULL,
  `ilosc` int(11) NOT NULL,
  `id_podkategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `id_zdjec`, `id_opisu_zdj`, `nazwa`, `opis`, `parametry`, `cena`, `ilosc`, `id_podkategoria`) VALUES
(1, 'K01', 'https://mirat.eu/img/products/30/62/3/4_max.jpg', 'Krzes??o Kolix  ', '-Wytrzyma??e drewniane nogi\r\n-Siedzisko z mi??kk?? poduch??\r\n-Wygodne siedzisko oraz oparcie', 'Szeroko????:  45cm\r\n\r\nG????boko????:  53cm\r\n\r\nWysoko????:   87cm\r\n\r\nMateria??:  tkanina', 145, 8, 1),
(2, 'K02', 'https://www.quadre.pl/img/products/67/26/2_max.jpg', 'Krzes??o Deplex ', '-krzes??o tapicerowane tkanin??\r\n-nogi maj?? zabezpieczenia przed uszkodzeniem paneli pod??ogowych\r\n-wytrzyma??e drewniane nogi', 'Szeroko????:  48cm\r\n\r\nG????boko????:  55cm\r\n\r\nWysoko????:   84cm\r\n\r\nMateria??:  tkanina', 170, 25, 1),
(3, 'K03', 'https://meblujdom.pl/29029-thickbox_default/krzeslo-tapicerowane-tkanina-otto-signal.jpg', 'Krzes??o Protex ', '-drewniany stela??\r\n\r\n-tapicerowane tkanin?? siedzisko i oparcie\r\n\r\n-wytrzyma??e nogi', 'Szeroko????: 44cm\r\n\r\nG????boko????: 54cm\r\n\r\nWysoko????:  98cm\r\n\r\n', 210, 25, 1),
(4, 'K04', 'https://lifestylehome.com.pl/639002-home_default/lsh-signal-soren-krzes??o-tkanina-szary.jpg', 'Krzes??o Malin ', '-wytrzyma??e drewno\r\n\r\n-stela?? lakierowany na bia??o\r\n\r\n-siedzisko wykonane z tkaniny ', 'Szeroko????: 44cm\r\n\r\nG????boko????: 51cm\r\n\r\nWysoko????:  98cm\r\n\r\nMateria??:  tkanina grafit', 165, 31, 1),
(5, 'K05', 'https://www.momastudio.pl/produkty/KRZESLOTAPICEROWANESKORALAYLAHIGH5.jpg', 'Krzes??o Dorex ', '-stela?? wykonany z drewna\r\n\r\n-siedzisko wykonane  jest z sk??ry\r\n\r\n-wytrzyma??e nogi', 'Szeroko????: 48cm\r\n\r\nG????boko????: 01cm\r\n\r\nWysoko????:  98cm\r\n\r\nMateria??: sk??ra', 190, 33, 1),
(6, 'K06', 'http://www.meblowy.pl/images/oferta/t_2014-11-10-12-36-33-000000000885571_big.jpeg', 'Krzes??o Nilix', '-stela?? metalowy w kolorze srebrnym\r\n\r\n-siedzisko tapicerowane sk??r??\r\n\r\n-idealne krzes??o do jadalni\r\n\r\n-wygodne w siedzeniu', 'Szeroko????: 45cm\r\n\r\nG????boko????: 48cm\r\n\r\nWysoko????:  94cm\r\n\r\nMateria??: sk??ra', 175, 8, 1),
(7, 'K07', 'https://mirat.eu/img/products/39/23/0/15_max.jpg', 'Krzes??o Apelinek', '-stela?? metalowy\r\n\r\n-krzes??o jest tapicerowane sk??r??\r\n\r\n-wygodne w siedzeniu \r\n\r\n', 'Szeroko????: 44cm\r\n\r\nG????boko????: 01cm\r\n\r\nWysoko????:  98cm\r\n\r\nMateria??:  sk??ra', 220, 25, 1),
(8, 'K08', 'https://www.meblant.pl/upload/wysiwyg/zdjecia/MM/Krzes??a%20metalowe/campa.jpg', 'Krzes??o Terelek', '-krzes??o wykonane z metalu\r\n\r\n-4 nogi stalowe\r\n\r\n-siedzisko tapicerowane\r\n\r\n-krzes??o idealne do jadalni', 'Szeroko????: 47cm\r\n\r\nG????boko????: 53cm\r\n\r\nWysoko????:  94cm\r\n\r\nMateria??:  tapicerowana sk??ra', 160, 16, 1),
(9, 'K09', 'https://www.inspirowane.pl/1521246-thickbox/insp-plush-krzesla-krzeslo-tkanina-4-kolory.jpg', 'Krzes??o Herbelin', '-stela?? 4 drewniane nogi\r\n\r\n-wygodne w siedzeniu\r\n\r\n-oparcie oraz siedzisko wykonane z tkaniny\r\n\r\n-wytrzyma??e nogi', 'Szeroko????: 47cm\r\n\r\nG????boko????: 42cm\r\n\r\nWysoko????:  94cm\r\n\r\nMateria??:  tkanina', 215, 18, 1),
(10, 'S01', 'https://cdn.arena.pl/6f12a0c9132ec9d935903d126d44a968-product_lightbox.jpg', 'St????  Petex', '-Nogi wykonane z drewna bukowego\r\n\r\n-Blat wykonany z p??yty laminowanej\r\n\r\n-St???? jest rozk??adany do maksymalnej szeroko??ci 240cm', 'Szeroko????:  130-240cm\r\n\r\nG????boko????:  90cm\r\n\r\nWysoko????:   76cm\r\n\r\nWaga:       44 kilogramy', 510, 36, 2),
(11, 'S02', 'https://cdn.arena.pl/1203d6b8476609e34def60703abffa81-product_lightbox.jpg', 'St???? Delex', '-St???? rozk??adany do d??ugo??ci 220cm\r\n\r\n-Blat wykonany z p??yty laminowanej\r\n\r\n-Solidne nogi', 'Szeroko????:  120-220cm\r\n\r\nG????boko????:  75cm\r\n\r\nWysoko????:   80cm\r\n\r\nWaga:       47 kilogramy', 450, 27, 2),
(12, 'S03', 'https://www.ikea.com/pl/pl/images/products/ekedalen-sto-rozk-adany__0516741_PE640521_S4.JPG', 'St???? Betlek', '-St???? jest ca??y wykonany z drewna bukowego\r\n\r\n-St???? rozk??adany', 'Szeroko????:  130-210cm\r\n\r\nG????boko????:  73cm\r\n\r\nWysoko????:   74cm\r\n\r\nWaga:       36 kilogramy', 550, 47, 2),
(13, 'S04', 'https://static.abra-meble.pl/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/s/t/sto_-soleo-czekolada-_1_.jpg', 'St???? Coblek', '-Materia?? p??yta meblowa\r\n\r\n-St???? rozk??adany\r\n\r\n-Wykonany ca??y z drewna\r\n\r\n\r\n\r\n\r\n', 'Szeroko????:  140-210cm\r\n\r\nG????boko????:  79cm\r\n\r\nWysoko????:   72cm\r\n\r\nWaga:       42 kilogramy', 430, 21, 2),
(14, 'S05', 'https://www.wmrowisku.pl/img/min/764/421/76421054_signal-stol-rozkladany-kent-ii-bialy-buk-150x80_800x600_FFFFFF_pad.jpg', 'St???? Likex', '-St???? rozk??adany do szeroko??ci 220cm\r\n\r\n-Wykonany z drewna \r\n\r\n-Solidny,wytrzyma??y', 'Szeroko????:  120-220cm\r\n\r\nG????boko????:  85cm\r\n\r\nWysoko????:   80cm\r\n\r\nWaga:       47 kilogramy', 670, 16, 2),
(15, 'S06', 'https://www.brw.pl/gfx/brw/img/produkt/stol-rozkladany-miron-mini-kolor-dab-sonoma-21995-xlarge.jpg', 'St???? Bret', '-Idealny st???? do kuchni\r\n\r\n-Stabilna konstrukcja\r\n\r\n-Wykonany ca??y z drewna', 'Szeroko????:  180cm\r\n\r\nG????boko????:  75cm\r\n\r\nWysoko????:   70cm\r\n\r\nWaga:       33 kilogramy', 300, 12, 2),
(16, 'S07', 'http://www.exceleo.pl/upload/sklep_galeria/6198/rozkladany-stol-gar-kolor-bloto-122-182x80-bizzotto-modern--produkt-importowany708.jpg', 'St???? Olik', '-Rozk??adany st????\r\n\r\n-Szeroko???? po roz??o??eniu to 215cm\r\n\r\n-Solidne nogi', 'Szeroko????:  111-215cm\r\n\r\nG????boko????:  66cm\r\n\r\nWysoko????:   75cm\r\n\r\nWaga:       41 kilogramy', 370, 9, 2),
(17, 'S08', 'https://image.ceneostatic.pl/data/products/44122374/i-king-home-stol-galaxy-rozkladany-bialy-lakierowany-140-200-cm-jastgalaxy1420.jpg', 'St???? Pretey', '-St???? wykonany z p??yty meblowej w kolorze bia??ym\r\n\r\n-D??ugo???? po roz??o??eniu to 206cm', 'Szeroko????:  160-206cm\r\n\r\nG????boko????:  81cm\r\n\r\nWysoko????:   73cm\r\n\r\nWaga:       55 kilogramy', 750, 8, 2),
(18, 'S09', 'https://lepukka.pl/26616-large_default/stol-brooklyn-170-270-ciemny-braz.jpg', 'St???? Dref', '-Blat sto??u wykonany z drewna w kolorze ciemno-br??zowym\r\n\r\n-Nogi wykonane z drewna w kolorze szarym\r\n\r\n-D??ugo???? po roz??o??eniu to 219cm', 'Szeroko????:  150-219cm\r\n\r\nG????boko????:  92cm\r\n\r\nWysoko????:   86cm\r\n\r\nWaga:       56 kilogramy', 750, 6, 2),
(19, 'SZ01', 'https://meblodom.com.pl/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/u/n/untitled.104_1.jpg', 'Szafka dolna z szuflad?? Lener', 'Szafka dolna z 1 szuflad?? o szeroko??ci 43cm.\r\nW szafce mo??na umieszcza?? wiele drobiazg??w jak sztuczce, r??czniki, a tak??e mo??na umie??ci?? kosz na ??mieci.\r\nMo??na zaopatrzy?? si?? o blat do szafki.', 'G????boko????: 47cm\r\n\r\nSzeroko????: 43cm\r\n\r\nWysoko????: 78cm\r\n\r\nWaga:     21kg', 160, 17, 3),
(20, 'SZ02', 'https://meblodom.com.pl/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/u/n/untitled.94.jpg', 'Szafka g??rna Blen', 'Szafka g??rna o szeroko??ci 38cm idealnie pasuje do otoczenia.\r\nDodatkowo szafka posiada dwie wk??adane p????ki.', 'G????boko????: 35cm\r\n\r\nSzeroko????: 38cm\r\n\r\nWysoko????:  73cm\r\n\r\nWaga:      14kg', 115, 21, 3),
(21, 'SZ03', 'https://a.allegroimg.com/s400/013838/757d3ac34c3690eac3cda06393d2', 'Szafka g??rna 2-drzwiowa Lebenk', 'Szafka g??rna z dwoma wk??adanymi p????kami.\r\nPosiada dwie otwierane drzwiczki.', 'G????boko????: 38cm\r\n\r\nSzeroko????: 82cm\r\n\r\nWysoko????: 74cm\r\n\r\nWaga:     21kg', 145, 12, 3),
(22, 'SZ04', 'https://s1.meble.pl/gfx/konfigurator/szafki/GST.jpg', 'Szafka g??rna Janel', 'Szafka g??rna 2-drzwiowa w kolorze bia??ym.P??yta wi??rowa laminowana.', 'G????boko????: 32cm\r\n\r\nSzeroko????: 57cm\r\n\r\nWysoko????: 64cm\r\n\r\nWaga:     17kg', 127, 17, 3),
(23, 'SZ05', 'https://images.obi.pl/product/PL/1500x1500/249158_1.jpg', 'Szafka dolna Plem', 'Szafka dolna z 3 szufladami\r\nKorpus-bia??y\r\nP??yta wi??rowa laminowana', 'G????boko????: 41cm\r\n\r\nSzeroko????: 39cm\r\n\r\nWysoko????: 81cm\r\n\r\nWaga:     24kg', 145, 23, 3),
(24, 'SZ06', 'https://noka.pl/5545-large_default/wysoka-szafka-kuchenna-odeta.jpg', 'Szafka wysoka Bretil', 'Szafka wysoka z pod??wietlanymi p????kami.\r\nW sk??ad wchodz?? dwie otwierane p????ki.\r\nG??rna cz?????? wykonana z d??bu w kolorze\r\njasnym.', 'G????boko????: 59cm\r\n\r\nSzeroko????: 55cm\r\n\r\nWysoko????: 180cm\r\n\r\nWaga:     55kg', 250, 26, 3),
(25, 'SZ07', 'https://images.obi.pl/product/PL/1500x1500/620631_1.jpg', 'Szafka dolna Tris', 'Szafka dolna pod zlewozmywak.\r\nPosiada dwie otwierane drzwiczki.\r\nW ??rodku du??o miejsca.\r\nCa??o???? wykonana z d??bu w kolorze ciemnym.\r\nKlamki w kolorze kremowym.', 'G????boko????: 47cm\r\n\r\nSzeroko????: 82cm\r\n\r\nWysoko????: 85cm\r\n\r\nWaga:     23kg', 190, 12, 3),
(26, 'B01', 'https://static02.leroymerlin.pl/files/media/image/570/1999570/product/blat-kuchenny-laminowany-aluminium-jasne-040l-biuro-styl,large.jpg', 'Blat Ergen', '-Blat wykonany jest w kolorze bia??ym\r\n\r\n-Kraw??dzie blatu zosta??y zaokr??glone', 'D??ugo????:  66cm\r\n\r\nSzeroko????: 44cm\r\n\r\nGrubo???? blatu: 2,7cm\r\n\r\nWaga:  55kg', 245, 11, 4),
(27, 'B02', 'https://static01.leroymerlin.pl/files/media/image/397/1878397/product/main.jpg', 'Blat Veix', 'Blat wykonany z marmuru w kolorze szarym.', 'D??ugo????:  70cm\r\n\r\nSzeroko????: 54cm\r\n\r\nGrubo???? blatu: 3,6cm\r\n\r\nWaga:  66kg', 455, 13, 4),
(28, 'B03', 'https://static02.leroymerlin.pl/files/media/image/821/1903821/product/blat-kuchenny-drewniany-dab-antique-dlh,large.jpg', 'Blat Dryt', 'Blat wykonany z drewna d??bu.', 'D??ugo????:  62cm\r\n\r\nSzeroko????: 44cm\r\n\r\nGrubo???? blatu: 3,9cm\r\n\r\nWaga:  54kg', 462, 11, 4),
(29, 'B04', 'https://static01.domzpomyslem.pl/files/media/image/311/1881311/product_dzp/blat-kuchenny-drewniany-swierk-pro-drewex,large.jpg', 'Blat Frelx', 'Blat wykonany z drewna ??wierku.', 'D??ugo????:  67cm\r\n\r\nSzeroko????: 59cm\r\n\r\nGrubo???? blatu: 4,2cm\r\n\r\nWaga:  75kg', 543, 15, 4),
(30, 'B05', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEVWcXzuAEh9W7We0VMep9tK7AhnZmZLPktLUWuuNr7Fft98xXcQ', 'Blat Hyrt', 'Blat wykonany z d??bu Hen naturalny. ', 'D??ugo????:  68cm\r\n\r\nSzeroko????: 62cm\r\n\r\nGrubo???? blatu: 2,4cm\r\n\r\nWaga:  55kg', 576, 18, 4),
(31, 'B06', 'https://static02.leroymerlin.pl/files/media/image/292/1866292/product/blat-kuchenny-laminowany-marmur-piemonte-072s-biuro-styl,large.jpg', 'Blat Kidr', 'Blat wykonany z marmuru Predr w kolorze bia??ym.', 'D??ugo????:  74cm\r\n\r\nSzeroko????: 58cm\r\n\r\nGrubo???? blatu: 3,3cm\r\n\r\nWaga:  46kg', 145, 25, 4),
(32, 'B07', 'https://piolo-meble.pl/14074-large_default/blat-samara-sand.jpg', 'Blat Minc', 'Blat wykonany z tytanu w kolorze ciemno-szarym.', 'D??ugo????:  80cm\r\n\r\nSzeroko????: 64cm\r\n\r\nGrubo???? blatu: 3,9cm\r\n\r\nWaga:  86kg', 678, 7, 4),
(33, 'B08', 'https://hurtownia.komandor.pl/pomorskie/images/com_sobi2/clients/807_img.jpg', 'Blat Xuc', 'Blat wykonany ze sosny w kolorze kremowym.', 'D??ugo????:  64cm\r\n\r\nSzeroko????: 54cm\r\n\r\nGrubo???? blatu: 4,2cm\r\n\r\nWaga:  52kg', 655, 20, 4),
(34, 'L01', 'https://www.villadecor.pl/4457-thickbox_default/lusto-w-bialej-drewnianej-ramie-laka-60x80-.jpg', 'Lustro Trex Vil', 'Prostok??tne lustro Trex Vil przeznaczone do zawieszenia w pionie lub w poziomie.', 'Wysoko????:  70cm\r\n\r\nSzeroko????:  52cm\r\n\r\nG????boko????:  2,6cm\r\n\r\nWaga:      3,50kg', 135, 15, 6),
(35, 'L02', 'https://images.obi.pl/product/PL/1500x1500/597746_1.jpg', 'Lustro Frex Bre', 'Lustro wyposa??one jest w szklan?? p????k?? oraz pod??wietlanym pasem na g??rze.', 'Wysoko????:  65cm\r\n\r\nSzeroko????:  62cm\r\n\r\nG????boko????:  3,6cm\r\n\r\nWaga:      4,50kg', 240, 11, 6),
(36, 'L03', 'https://images.obi.pl/product/PL/1500x1500/619478_1.jpg', 'Lustro Vix Lex', 'Prostok??tne lustro o wysokiej jako??ci produktu.\r\nPrzeznaczone do zawieszenia w pionie lub w poziomie.', 'Wysoko????:  110cm\r\n\r\nSzeroko????:  62cm\r\n\r\nG????boko????:  3,6cm\r\n\r\nWaga:      5,50kg', 222, 12, 6),
(37, 'L04', 'https://static02.leroymerlin.pl/files/media/image/560/1905560/product/lustro-lazienkowe-z-oswietleniem-wbudowanym-altue-60-x-80-venti,large.jpg', 'Lustro Bryt Frix', 'Prostok??tne lustro pod??wietlane diodami LED nadaje mu elegancj?? i szyk.', 'Wysoko????:  60cm\r\n\r\nSzeroko????:  80cm\r\n\r\nG????boko????:  3,6cm\r\n\r\nWaga:      3,65kg', 270, 10, 6),
(38, 'L05', 'https://static02.leroymerlin.pl/files/media/image/919/1337919/product/lustro-lazienkowe-bez-oswietlenia-prostokatne-60-x-120-dubiel-vitrum,large.jpg', 'Lustro Xyp ', 'Prostok??tne lustro o wysokiej jako??ci wykonania,wyposa??ony w foli?? ochronn??.\r\nPrzeznaczony do zawieszenia w pionie lub w poziomie.', 'Wysoko????:  75cm\r\n\r\nSzeroko????:  62cm\r\n\r\nG????boko????:  3,2cm\r\n\r\nWaga:      3,75kg', 210, 12, 6),
(39, 'L06', 'https://9.allegroimg.com/original/03cb79/4f73cfa94283b5abd7a7c59ef949/Lustro-prostokatne-METALOWE-czarne-60x40cm', 'Lusto Grui ', 'Prostok??tne lustro ze szk??a  z czarnymi ramkami.\r\nPrzeznaczony do zawieszenia w pionie lub w poziomie.', 'Wysoko????:  82cm\r\n\r\nSzeroko????:  69cm\r\n\r\nG????boko????:  3,6cm\r\n\r\nWaga:      4,50kg', 390, 15, 6),
(40, 'L07', 'http://mojachata.eu/image/items/dubielvitrum/fe1c6a3e69923f55be2eef57de3f7f3a.jpg', 'Lustro Zoiu', 'Lustro szlifowane,zaokr??glone naro??niki oraz g??rna cz?????? w kszta??cie p????kola.', 'Wysoko????:  72cm\r\n\r\nSzeroko????:  58cm\r\n\r\nG????boko????:  3,6cm\r\n\r\nWaga:      4,50kg', 260, 15, 6),
(41, 'L08', 'https://7.allegroimg.com/original/0cde40/154341ab4e029a9351ce714c7747', 'Lustro Crans', 'Okr??g??e lustro wyposa??one w o??wietlenie LED.', 'Wysoko????:  72cm\r\n\r\nSzeroko????:  72cm\r\n\r\nG????boko????:  3,7cm\r\n\r\nWaga:      4,20kg', 340, 20, 6),
(42, 'UM01', 'https://www.svet-kupelne.sk/storage/photo/4779135/', 'Umywalka Tangu', 'Umywalka wykonana z ceramiki.\r\nPrzystosowana do monta??u na meblach ??azienkowych.\r\nZ otworem na bateri??.', 'Wysoko????: 14cm\r\n\r\nSzeroko????:  50cm\r\n\r\nG????boko????:  32cm\r\n\r\nWaga:  43kg', 220, 15, 7),
(43, 'UM02', 'https://www.fajnalazienka.com/pol_pl_Umywalka-nablatowa-przyscienna-Marmorin-Pia-600-5598_2.jpg', 'Umywalka Triper', 'Prostok??tna nablatowa bezprzelewowa. Umywalka wykonana z ceramiki.\r\nUmywalka nadaje si?? do umieszczenia na blacie oraz na szafce.', 'Wysoko????: 12cm\r\n\r\nSzeroko????:  48cm\r\n\r\nG????boko????:  38cm\r\n\r\nWaga:  47kg', 260, 21, 7),
(44, 'UM03', 'https://static01.leroymerlin.pl/files/media/image/529/1408529/product/umywalka-wpuszczana-w-blat-50-polly,large.jpg', 'Umywalka Cando', 'Prostok??tna umywalka wykonana z ceramiki wpuszczona w blat.\r\nWyposa??ona w otw??r na bateri?? oraz otw??r przelewowy.', 'Wysoko????: 17cm\r\n\r\nSzeroko????:  47cm\r\n\r\nG????boko????:  35cm\r\n\r\nWaga:  37kg', 245, 6, 7),
(45, 'UM04', 'https://f.allegroimg.com/s512/03277f/4e77176d4a1586870ce5f8a2857f/BRAIDER-umywalka-misa-okragla-nablatowa-AURIGA', 'Umywalka Lazaj', 'Okr??g??a nablatowa umywalka wykonana z wysokiej jako??ci ceramiki.\r\nDo monta??u na meblach ??azienkowych.', 'Wysoko????: 14cm\r\n\r\nSzeroko????:  42cm\r\n\r\nG????boko????:  42cm\r\n\r\nWaga:  20kg', 190, 30, 7),
(46, 'UM05', 'https://www.stylowalazienka.pl/environment/cache/images/500_500_productGfx_61f9886fc9ac2e9c4db4e50fbe6356f9.jpg', 'Umywalka Tola', 'Owalna umywalka wykonana z ceramiki.\r\nWyposa??ona w otw??r na bateri?? oraz posiada przelew.', 'Wysoko????: 18cm\r\n\r\nSzeroko????:  49cm\r\n\r\nG????boko????:  35cm\r\n\r\nWaga:  12kg', 115, 11, 7),
(47, 'UM06', 'http://www.wodnetrendy.pl/img/p/11472-30979-thickbox.jpg', 'Umywalka Zer4', 'Nablatowa umywalka wykonana z ceramiki.\r\nPosiada otw??r na bateri??.\r\nIdealnie prezentuje si?? na meblach ??azienkowych.', 'Wysoko????: 14cm\r\n\r\nSzeroko????:  45cm\r\n\r\nG????boko????:  43cm\r\n\r\nWaga:  12kg', 220, 24, 7),
(48, 'UM07', 'https://static01.leroymerlin.pl/files/media/image/500/1586500/product/umywalka-75-kolo-traffic,large.jpg', 'Umywalka Kix45', 'Umywalka ??azienkowa wykonana z ceramiki,z otworem na bateri?? i przelewem.\r\nIdealna umywalka do szafek.', 'Wysoko????: 4cm\r\n\r\nSzeroko????:  65cm\r\n\r\nG????boko????:  46cm\r\n\r\nWaga:  13kg', 167, 13, 7),
(49, 'UM08', 'https://static02.leroymerlin.pl/files/media/image/838/1408838/product/umywalka-nablatowa-solo-500c,large.jpg', 'Umywalka Zvb87', 'Kwadratowa nablatowa umywalka wykonana z ceramiki z otworem na bateri??.', 'Wysoko????: 19cm\r\n\r\nSzeroko????:  44cm\r\n\r\nG????boko????:  44cm\r\n\r\nWaga:  18kg', 270, 24, 7),
(50, 'LS01', 'https://images.obi.pl/product/PL/1500x1500/600692_1.jpg', 'Szafka z umywalk?? bia???? Prot35', 'Zestaw ??azienkowy Prot35 w kolorze bia??ym.\r\nDoskona??ej jako??ci szafka wraz z umywalk??.', 'Waga:     29,0 kg\r\n\r\nWysoko????: 50,0 cm\r\n\r\nSzeroko????: 58,8 cm\r\n\r\nG????boko????: 44,5 cm', 410, 8, 8),
(51, 'LS02', 'https://images.obi.pl/product/PL/1500x1500/598561_1.jpg', 'Szafka z umywalk?? Kyc4', 'Komplet sk??adaj??cy si?? z szafki oraz umywalki meblowej.\r\nBoki oraz fronty s?? pokryte okleina drewnopodobn?? w kolorze br??zowym.\r\nPosiada dwie szuflady.', 'Waga:     32,0 kg\r\n\r\nWysoko????: 43,0 cm\r\n\r\nSzeroko????: 86 cm\r\n\r\nG????boko????: 44,5 cm', 760, 20, 8),
(52, 'LS03', 'https://static.lazienkaplus.pl/files/produkty/cache/400x400/meb/roc/a856526576.jpg', 'Zestaw szafka z umywalk?? Nyf', 'Zestaw sk??adaj??cy si?? z szafki wykonanej z d??bu w kolorze br??zowym oraz ceramicznej umywalki meblowej.\r\nPosiada jedn?? du???? szuflad??.', 'Waga:     29,0 kg\r\n\r\nWysoko????: 50,0 cm\r\n\r\nSzeroko????: 58,8 cm\r\n\r\nG????boko????: 44,5 cm', 770, 12, 8),
(53, 'LS04', 'https://static02.leroymerlin.pl/files/media/image/008/1927008/product/szafka-pod-umywalke-79-comad-aruba,large.jpg', 'Szafka pod umywalk?? Rety-B45', 'Szafka pod umywalk??,boki zosta??y wykonane z drewna w kolorze jasno br??zowym.', 'Waga:     17,0 kg\r\n\r\nWysoko????: 78,0 cm\r\n\r\nSzeroko????: 59,8 cm\r\n\r\nG????boko????: 44,5 cm', 390, 24, 8),
(54, 'LS05', 'https://images.obi.pl/product/PL/1500x1500/625165_1.jpg', 'Szafka wisz??ca Oliu-98', 'Wisz??ca szafka ??azienkowa wykonana z p??yty MDF w kolorze szary br??z.\r\nSzafka pomie??ci wiele akcesori??w.', 'Waga:     7,0 kg\r\n\r\nWysoko????: 58,2 cm\r\n\r\nSzeroko????: 37,2 cm\r\n\r\nG????boko????: 24,5 cm', 270, 7, 8),
(55, 'LS06', 'https://images.obi.pl/product/PL/1500x1500/623591_1.jpg', 'Szafka wisz??ca lustrzana Hrep', 'Szafka wisz??ca lustrzana,jednodrzwiowa w kolorze bia??ym.', 'Waga:     12,0 kg\r\n\r\nWysoko????: 78,0 cm\r\n\r\nSzeroko????: 59,8 cm\r\n\r\nG????boko????: 44,5 cm', 177, 15, 8),
(56, 'LS07', 'https://mks-meble.pl/images/produkty/prospero/lazienka/milo/4element.jpg', 'Szafka pod umywalk?? Awryk', 'Szafka pod umywalk?? firmy Awryk. \r\nFront oraz boki wykonane s?? z p??yty wi??rowej lakierowanej na bia??o.\r\nPosiada dwie wysuwane szuflady.', 'Waga:     23,8 kg\r\n\r\nWysoko????: 81,5 cm\r\n\r\nSzeroko????: 54,4 cm\r\n\r\nG????boko????: 49,2 cm', 545, 11, 8),
(57, 'LS08', 'https://www.rudepol.pl/images/product_images/popup_images/Wiszca-szafka-azienkowa-LUMO-23632835-z-lustrem_18.jpg', 'Szafka lustrzana bia??a Nylek', 'Szafka lustrzana wykonana z polipropylenu. Szafka sk??ada si?? z trzech cz????ci , ka??da zamykana oddzielnie.\r\nDrzwi zosta??y wyposa??one w lustra.', 'Waga:     4,0 kg\r\n\r\nWysoko????: 29,0 cm\r\n\r\nSzeroko????: 55,2 cm\r\n\r\nG????boko????: 16 cm', 115, 5, 8),
(58, 'ZE01', 'https://images.obi.pl/product/PL/1500x1500/368047_1.jpg', 'Wieszak meblowy 3 haczyki Jelik', 'Listwa wieszakowa do ??azienki 3-ramienna.\r\nWykonana z wysokiej jako??ci,dzi??ki temu zachowuje d??ug?? trwa??o????.\r\nIdealna listwa na r??czniki. ', 'Waga:     89 g\r\n\r\nWysoko????: 4,5 cm\r\n\r\nSzeroko????: 19,2 cm\r\n\r\nG????boko????: 4 cm', 30, 25, 9),
(59, 'ZE02', 'https://offers.gallery/p-c3-47-c347eaceb65eea760dcdb65047024ed5500x500/wieszaki-na-reczniki-wieszak-5-hakowy-classic-mosidz-chrom-057cc-andex-ceny-opinie.jpg', 'Wieszak ??cienny 5 haczyk??w Kilep', 'Listwa wieszakowa do ??azienki 5-ramienna.\r\nWykonana z wysokiej jako??ci,dzi??ki temu zachowuje d??ug?? trwa??o????.\r\nIdealna listwa na r??czniki oraz ubrania. ', 'Waga:     132 g\r\n\r\nWysoko????:  4,2 cm\r\n\r\nSzeroko????: 37 cm\r\n\r\nG????boko????: 6 cm', 38, 27, 9),
(60, 'ZE03', 'https://images.obi.pl/product/PL/1500x1500/557783_1.jpg', 'S??uchawka prysznicowa Fril', 'Okr??g??a s??uchawka prysznicowa 5-strumieniowa.\r\nCharakteryzuje si?? estetycznym wygl??dem.', 'Waga:     232 g\r\n\r\nWysoko????:  26 cm\r\n\r\nSzeroko????: 8,7 cm\r\n\r\nG????boko????: 16 cm', 45, 15, 9),
(61, 'ZE04', 'https://images.obi.pl/product/PL/1500x1500/581902_1.jpg', 'Zestaw prysznicowy Lenx', 'Zestaw prysznicowy ze s??uchawk?? 2-strumieniow??,dr????kiem z uchwytem przesuwanym.\r\nStanowi elegancki wygl??d do kabiny.', 'Waga:     2 kg\r\n\r\nWysoko????:  69 cm\r\n\r\nSzeroko????: 15 cm\r\n\r\nG????boko????: 26 cm', 155, 6, 9),
(62, 'ZE05', 'https://images.obi.pl/product/PL/1500x1500/312344_1.jpg', 'Mydelniczka Jagun', 'Funkcjonalna mydelniczka pasuj??ca do ka??dej ??azienki, wykonana z doskona??ych materia????w.', 'Waga:     112 g\r\n\r\nWysoko????:  3,2 cm\r\n\r\nSzeroko????: 11 cm\r\n\r\nG????boko????: 16 cm', 17, 26, 9),
(63, 'ZE06', 'https://images.obi.pl/product/PL/1500x1500/605908_1.jpg', 'Kubek Hen', '??adny solidny kubek idealnie pasuje do ??azienki.\r\nKubek mo??e s??u??y?? jako miejsce na szczoteczki oraz past??.', 'Waga:     180 g\r\n\r\nWysoko????:  11 cm\r\n\r\nSzeroko????: 7 cm\r\n\r\nG????boko????: 6 cm', 18, 20, 9),
(64, 'ZE07', 'https://images.obi.pl/product/PL/1500x1500/633512_1.jpg', 'Wieszak na papier toaletowy Zlip-45', 'Wieszak na papier toaletowy wykonany jest z chromowej stali. \r\nMocowany jest na przyssawk??,??atwy monta??.  ', 'Waga:     72 g\r\n\r\nWysoko????:  5,2 cm\r\n\r\nSzeroko????: 8,9 cm\r\n\r\nG????boko????: 16 cm', 24, 25, 9),
(65, 'ZE08', 'https://images.obi.pl/product/PL/1500x1500/252480_1.jpg', 'Kosz na bielizn?? Letek', 'Kosz wiklinowy szary.\r\nIdealnie sprawdzi si?? w ka??dej ??azience.', 'Waga:     3 kg\r\n\r\nWysoko????:  4,2 cm\r\n\r\nSzeroko????: 37 cm\r\n\r\nG????boko????: 6 cm', 75, 12, 9),
(66, 'St????1', 'https://static.abra-meble.pl/catalog/product/a/r/arsal-stol-small.jpg', 'St???? rozk??adany Brinix', 'St???? rozk??adany o szeroko??ci maksymalnej 220cm. \r\nBlat wykonany z d??bu w kolorze br??zowym , nogi w kolorze szarym.', 'D??ugo????:    160-220 cm\r\n\r\nSzeroko????:  90 cm\r\n\r\nWysoko????:   79 cm\r\n\r\nWaga:       51 kg', 650, 10, 10),
(67, 'St????2', 'https://static.abra-meble.pl/catalog/product/s/t/stol-nora-not-02-1.jpg', 'St???? Keplik', 'Rozk??adany st???? do d??ugo??ci 210 cm. \r\nBlat sto??u jest wykonany z hartowanego szk??a w kolorze czarnym,\r\nnogi wykonane z d??bu w kolorze br??zowym.', 'D??ugo????:    140-210 cm\r\n\r\nSzeroko????:  86 cm\r\n\r\nWysoko????:   72 cm\r\n\r\nWaga:       61 kg', 800, 5, 10),
(68, 'St????3', 'https://static.abra-meble.pl/catalog/product/s/u/sunny-1-bialy-_2_.jpg', 'St???? Nikin-45', 'Rozk??adany st???? wykonany z ca??o??ci z d??bu w kolorze bia??ym,solidne nogi,wytrzyma??y.', 'D??ugo????:    130-190 cm\r\n\r\nSzeroko????:  75 cm\r\n\r\nWysoko????:   79 cm\r\n\r\nWaga:       45 kg', 650, 15, 10),
(69, 'St????4', 'https://static.abra-meble.pl/catalog/product/u/r/uran-1-bialy-_1_.jpg', 'St???? Tren-23', 'Okr??g??y st???? w kolorze bia??ym,rozk??adany blat na dwie cz????ci.', 'D??ugo????:    900-140 cm\r\n\r\nSzeroko????:  90 cm\r\n\r\nWysoko????:   76 cm\r\n\r\nWaga:       47 kg', 700, 7, 10),
(70, 'St????5', 'https://static.abra-meble.pl/catalog/product/f/l/flot16.jpg', 'St???? Hilik-B', 'St???? rozk??adany o szeroko??ci maksymalnej 240cm. \r\nBlat wykonany z d??bu w kolorze bia??ym, nogi w kolorze szarym.', 'D??ugo????:    170-240 cm\r\n\r\nSzeroko????:  92 cm\r\n\r\nWysoko????:   81 cm\r\n\r\nWaga:       55 kg', 780, 19, 10),
(71, 'St????6', 'https://static.abra-meble.pl/catalog/product/a/b/abra_17_06_28_nora_stol_sonoma_czekolada.jpg', 'St???? Vilik-H', 'Rozk??adany st???? do d??ugo??ci 190 cm.\r\nSt???? wykonany ca??y z drewna w kolorze czekoladowym.\r\nSolidne nogi.', 'D??ugo????:    160-190 cm\r\n\r\nSzeroko????:  79 cm\r\n\r\nWysoko????:   78 cm\r\n\r\nWaga:       49 kg', 750, 23, 10),
(72, 'St????7', 'https://static.abra-meble.pl/catalog/product/s/t/stol-kurt-6_1.jpg', 'St???? rozk??adany Wertyk-B3', 'Rozk??adany st???? do d??ugo??ci 250 cm.\r\nSt???? wykonany ca??y z d??bu w kolorze szaro br??zowym.\r\nIdealny st???? do salonu.', 'D??ugo????:    190-250 cm\r\n\r\nSzeroko????:  99 cm\r\n\r\nWysoko????:   87 cm\r\n\r\nWaga:       79 kg', 550, 5, 10),
(73, 'St????8', 'https://static.abra-meble.pl/catalog/product/s/t/st_vario_sonoma_czekoladowa_3_.jpg', 'St???? Bryt-A', 'Rozk??adany st???? do d??ugo??ci 210 cm.\r\nSt???? wykonany ca??y z d??bu w kolorze ciemno br??zowym.\r\nElegancki,solidne nogi,idealny do salonu st????.', 'D??ugo????:    160-210 cm\r\n\r\nSzeroko????:  80 cm\r\n\r\nWysoko????:   75 cm\r\n\r\nWaga:       56 kg', 840, 11, 10),
(74, 'Szafa1', 'https://static.abra-meble.pl/catalog/product/m/o/monako-szafa-2d2s.jpg', 'Szafa Alimeks', 'Szafa salonowa z dwoma szufladami.\r\nP????ki pod??wietlane Ledami.\r\nPojemna,wykonana z drewna.', 'G????boko????:  50 cm\r\n\r\nSzeroko????:  110 cm\r\n\r\nWysoko????:   203 cm\r\n\r\nWaga:       97 kg', 1200, 5, 12),
(75, 'Szafa2', 'https://static.abra-meble.pl/catalog/product/d/o/dover_22.jpg', 'Szafa Ryjik-B56', 'Dwudrzwiowa szafa w kolorze ciemno br??zowym.\r\nPosiada dwie p????ki.', 'G????boko????:  55 cm\r\n\r\nSzeroko????:  125 cm\r\n\r\nWysoko????:   201 cm\r\n\r\nWaga:       67 kg', 956, 9, 12),
(76, 'Szafa3', 'https://static.abra-meble.pl/catalog/product/r/o/rondo70.jpg', 'Szafa Mik-K', 'Szafa dwudrzwiowa w kolorze ciemno br??zowym, posiadaj??ca 6 p????ek , elegancka, przestronna idealna do salonu.', 'G????boko????:  57 cm\r\n\r\nSzeroko????:  960 cm\r\n\r\nWysoko????:   198 cm\r\n\r\nWaga:       76 kg', 780, 6, 12),
(77, 'Szafa4', 'https://static.abra-meble.pl/catalog/product/n/e/nemezis-220fwz17-l.jpg', 'Szafa Lip-5', 'Szafa jednodrzwiowa w kolorze jasnym.\r\nPosiada 6 p????ek.', 'G????boko????:  56 cm\r\n\r\nSzeroko????:  75 cm\r\n\r\nWysoko????:   192 cm\r\n\r\nWaga:       68 kg', 875, 15, 12),
(78, 'Szafa5', 'https://static.abra-meble.pl/catalog/product/v/e/verin---szafa-vrn-06_1.jpg', 'Szafa Bret-5b', 'Szafa salonowa jednodrzwiowa wykonana z drewna, posiadaj??ca 5 p????ek.', 'G????boko????:  42 cm\r\n\r\nSzeroko????:  68 cm\r\n\r\nWysoko????:   176 cm\r\n\r\nWaga:       59 kg', 450, 4, 12),
(79, 'Szafa6', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_2d_viki_05.jpg', 'Szafa Trek-A', 'Szafa Trek-A wykonana jest z d??bu w kolorze br??zowym.\r\nJest to szafa dwudrzwiowa posiadaj??ca 6 p????ek.', 'G????boko????:  75 cm\r\n\r\nSzeroko????:  130 cm\r\n\r\nWysoko????:   205 cm\r\n\r\nWaga:       91 kg', 890, 14, 12),
(80, 'Szafa7', 'https://static.abra-meble.pl/catalog/product/t/o/togo-22xtrt17.jpg', 'Szafa Olox-J', 'Szafa salonowa jednodrzwiowa obramowana szk??em, p????ki wykonane s?? ze szk??a,pod??wietlane ledami.', 'G????boko????:  53 cm\r\n\r\nSzeroko????:  63 cm\r\n\r\nWysoko????:   175 cm\r\n\r\nWaga:       64 kg', 560, 24, 12),
(81, 'Szafa8', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_duo_7-dab-sonoma_2_.jpg', 'Szafa Ader-Xa', 'Szafa dwudrzwiowa wykonana z solidnych materia????w.\r\nPosiada 6 p????ek pod??wietlanych.\r\nWykonana z d??bu w kolorze br??zowym.', 'G????boko????:  70 cm\r\n\r\nSzeroko????:  115 cm\r\n\r\nWysoko????:   205 cm\r\n\r\nWaga:       91 kg', 1340, 3, 12),
(82, 'naroznik1', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-prima-lewy-1.jpg', 'Naro??nik Elik', 'Naro??nik uniwersalny, posiada dwa schowki na po??ciel,w siedzeniu posiada spr????yny.\r\n', 'Szeroko????:   245 cm\r\n\r\nG????boko????:   135 cm\r\n\r\nWysoko????:    85 cm\r\n\r\nPowierzchnia spania:  134x230\r\n\r\nMateria??y:  tkanina\r\n\r\nWaga:       101 kg', 1200, 10, 13),
(83, 'naroznik2', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-largo-zaglowek_prawy_2-1_.jpg', 'Naro??nik Pitr-C', 'Naro??nik uniwersalny,posiada pojemnik na po??ciel. \r\nNaro??nik ten mo??e pos??u??y?? jako spanie,w siedzisku zastosowane spr????yny.', 'Szeroko????:   225 cm\r\n\r\nG????boko????:   115 cm\r\n\r\nWysoko????:    79 cm\r\n\r\nPowierzchnia spania:  110x210\r\n\r\nMateria??y:   tkanina\r\n\r\nWaga:        91 kg', 1300, 12, 13),
(84, 'naroznik3', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-gomera-1-_9__p.jpg', 'Naro??nik Zex-B', 'Naro??nik uniwersalny,kt??ry posiada pojemnik na po??ciel. \r\nNaro??nik ten mo??e pos??u??y?? jako spanie,w siedzisku zastosowane spr????yny.', 'Szeroko????:   255 cm\r\n\r\nG????boko????:   155 cm\r\n\r\nWysoko????:    92 cm\r\n\r\nPowierzchnia spania:  144x240\r\n\r\nMateria??y:  tkanina\r\n\r\nWaga:       111 kg', 1320, 6, 13),
(85, 'naroznik4', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-premium-z_puf_-niebieski-wersja_lewa_7_.jpg', 'Naro??nik Kik-V', 'Naro??nik uniwersalny,kt??ry posiada pojemnik na po??ciel. Naro??nik ten mo??e pos??u??y?? jako spanie,posiada puf?? w komplecie.', 'Szeroko????:   205 cm\r\n\r\nG????boko????:   145 cm\r\n\r\nWysoko????:    78 cm\r\n\r\nPowierzchnia spania:  124x185\r\n\r\nMateria??y:  tkanina\r\n\r\nWaga:       99 kg', 1230, 12, 13),
(86, 'naroznik5', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-huston-10-prawy.jpg', 'Naro??nik Vetrix', 'Naro??nik z funkcj?? spania, posiada pojemnik na po??ciel,posiada automat u??atwiaj??cy rozk??adanie.', 'Szeroko????:   235 cm\r\n\r\nG????boko????:   155 cm\r\n\r\nWysoko????:    82 cm\r\n\r\nPowierzchnia spania:  144x215\r\n\r\nMateria??y:  tkanina\r\n\r\nWaga:       105 kg', 1350, 15, 13),
(87, 'naroznik6', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-gregor-_wersja_prawa_1_.jpg', 'Naro??nik Werk', 'Naro??nik z funkcj?? spania, posiada pojemnik na po??ciel,posiada automat u??atwiaj??cy rozk??adanie.\r\nPosiada regulowane nag????wki.', 'Szeroko????:   265 cm\r\n\r\nG????boko????:   185 cm\r\n\r\nWysoko????:    82 cm\r\n\r\nPowierzchnia spania:  154x225\r\n\r\nMateria??y:  tkanina\r\n\r\nWaga:       115 kg', 1546, 21, 13),
(88, 'naroznik7', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-huston-2_lewy.jpg', 'Naro??nik Fek', 'Naro??nik uniwersalny,kt??ry posiada pojemnik na po??ciel. \r\nNaro??nik ten mo??e pos??u??y?? jako spanie,w siedzisku zastosowane spr????yny.\r\nPosiada regulowane nag????wki.', 'Szeroko????:   245 cm\r\n\r\nG????boko????:   165 cm\r\n\r\nWysoko????:    92 cm\r\n\r\nPowierzchnia spania:  154x225\r\n\r\nMateria??y:  tkanina\r\n\r\nWaga:       108 kg', 1100, 9, 13),
(89, 'naroznik8', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-siena-2-_1_.jpg', 'Naro??nik Seki-B', 'Naro??nik uniwersalny, posiada  schowek na po??ciel,w siedzeniu posiada spr????yny.\r\nMo??e s??u??y?? jako spanie.', 'Szeroko????:   215 cm\r\n\r\nG????boko????:   175 cm\r\n\r\nWysoko????:    85 cm\r\n\r\nPowierzchnia spania:  164x195\r\n\r\nMateria??y:  tkanina\r\n\r\nWaga:       95 kg', 1432, 5, 13),
(90, 'krz1', 'https://www.brw.pl/gfx/brw/img/produkt/krzeslo-paella-kolor-dab-stirling-tkanina-hc-21-silver-79933-mediumb.jpg', 'Krzes??o Matex-I', 'Solidne krzes??o wykonane z drewna bukowego.\r\nSiedzisko i oparcie tapicerowane tkanin??.', 'Szeroko????:   42 cm\r\n\r\nG????boko????:   41 cm\r\n\r\nWysoko????:    89 cm\r\n\r\nWaga:        7 kg', 170, 15, 14),
(91, 'krz2', 'https://www.brw.pl/gfx/brw/img/produkt/krzeslo-marynarz-poziomy-2-wybarwienie-drewna-bialy-cieply-tkanina-adel-6-grey-28088-xlarge.jpg', 'Krzes??o Fri-2', 'Krzes??o wykonane z drewna bukowego,siedzisko tapicerowane tkanin??.', 'Szeroko????:   43 cm\r\n\r\nG????boko????:   40 cm\r\n\r\nWysoko????:    91 cm\r\n\r\nWaga:        6,5 kg', 140, 15, 14),
(92, 'krz3', 'https://www.brw.pl/gfx/brw/img/produkt/krzeslo-alla-3-wybarwienie-drewna-dab-sonoma-tkanina-endo-7713-taupe-32757-xlarge.jpg', 'Krzes??o Jipo', 'Krzes??o wykonane z drewna bukowego,siedzisko tapicerowane tkanin??.\r\nIdealne krzes??o do salonu.', 'Szeroko????:   46 cm\r\n\r\nG????boko????:   43 cm\r\n\r\nWysoko????:    92 cm\r\n\r\nWaga:        7,1 kg', 145, 21, 14),
(93, 'krz4', 'https://meblolux-kepno.pl/userdata/gfx/6dc967be5749c2b34bd9646db07b057f.jpg', 'Krzes??o Vuben', 'Krzes??o w kolorze orzechowym,siedzisko tapicerowane tkanin??.', 'Szeroko????:   47 cm\r\n\r\nG????boko????:   41 cm\r\n\r\nWysoko????:    90 cm\r\n\r\nWaga:        6,4 kg', 155, 16, 14),
(94, 'krz5', 'https://www.agatameble.pl/media/cache/gallery/rc/wej2l9om/images/83/83547/0614-151-017-035-0001-p-1b.jpg', 'Krzes??o Kix', 'Krzes??o wykonane z metalu, siedzisko tapicerowane sk??r??.', 'Szeroko????:   42 cm\r\n\r\nG????boko????:   41 cm\r\n\r\nWysoko????:    88 cm\r\n\r\nWaga:        6,4 kg', 175, 12, 14),
(95, 'krz6', 'https://meblolux-kepno.pl/userdata/gfx/d859821ea363b1f4ea63d8003447c352.jpg', 'Krzes??o Afikx', 'Krzes??o wykonane z drewna bukowego,siedzisko tapicerowane tkanin??.', 'Szeroko????:   42 cm\r\n\r\nG????boko????:   41 cm\r\n\r\nWysoko????:    85 cm\r\n\r\nWaga:        6,4 kg', 135, 25, 14),
(96, 'krz7', 'https://meblolux-kepno.pl/userdata/gfx/d55ed245e167310647cef3d54176ba3e.jpg', 'Krzes??o Omen-A', 'Solidne krzes??o wykonane z drewna bukowego.\r\nSiedzisko i oparcie tapicerowane tkanin??.', 'Szeroko????:   45 cm\r\n\r\nG????boko????:   44 cm\r\n\r\nWysoko????:    89 cm\r\n\r\nWaga:        7,4 kg', 175, 7, 14),
(97, 'krz8', 'https://www.emobay.pl/images/produkty/1f/krzesla/mini/250px_TULIPAN%20BEZ.jpg', 'Krzes??o Qek', 'Krzes??o wykonane z metalu, siedzisko tapicerowane sk??r??.', 'Szeroko????:   45 cm\r\n\r\nG????boko????:   44 cm\r\n\r\nWysoko????:    89 cm\r\n\r\nWaga:        7,4 kg', 179, 21, 14),
(98, 'ste', 'https://www.agatameble.pl/media/cache/gallery/rc/5bo2wq4h/images/85/8531/1130-091-015-143-0001_pc_4.jpg', 'St???? tryk-7B', 'Rozk??adany st???? wykonany z drewna.', 'Szeroko????:   90 cm\r\n\r\nG????boko????:   90-180 cm\r\n\r\nWysoko????:    70 cm\r\n\r\nWaga:        35 kg', 420, 11, 15),
(99, 'ste2', 'https://www.agatameble.pl/media/cache/gallery/rc/rrbitvt0/images/83/8387/1178-005-015-005-0002_p_3.jpg', 'St???? Kej-2', 'Rozk??adany st???? do maksymalnej szeroko??ci 190 cm.\r\nWykonany z drewna.', 'Szeroko????:   140-190 cm\r\n\r\nG????boko????:   82 cm\r\n\r\nWysoko????:    74 cm\r\n\r\nWaga:        43 kg', 430, 14, 15),
(100, 'ste3', 'https://www.agatameble.pl/media/cache/gallery/rc/l4nbnikw/images/15/156191/0781-120-015-113-0001-p-1.jpg', 'St???? Opol-1V', 'Solidny,??adny st???? idealnie pasuje do jadalni.\r\nWykonany z drewna.', 'Szeroko????:   150 cm\r\n\r\nG????boko????:   80 cm\r\n\r\nWysoko????:    78 cm\r\n\r\nWaga:        32 kg', 450, 20, 15),
(101, 'ste4', 'https://www.agatameble.pl/media/cache/gallery/rc/dymarbvu/images/86/86786/1674-021-015-008-0001-p-1a.jpg', 'St???? Brik-23', 'Ma??y stolik do jadalni, nogi wykonane ze stela??u metalowego.\r\nBlat wykonany ze szk??a.', 'Szeroko????:   85 cm\r\n\r\nG????boko????:   110 cm\r\n\r\nWysoko????:    76 cm\r\n\r\nWaga:        28 kg', 120, 9, 15),
(102, 'ste5', 'https://www.agatameble.pl/media/cache/gallery/rc/5eags17x/images/81/81351/0090-000-015-263-0002-est45-d47a.jpg', 'St???? Kik-BN', 'St???? wykonany z drewna d??bu w kolorze br??zowym.', 'Szeroko????:   170 cm\r\n\r\nG????boko????:   95 cm\r\n\r\nWysoko????:    82 cm\r\n\r\nWaga:        31 kg', 460, 18, 15),
(103, 'ste6', 'https://www.agatameble.pl/media/cache/gallery/rc/rbl6radl/images/88/88154/1113-061-015-001-0001-p-3.jpg', 'St???? Xek', 'Rozk??adany st???? do maksymalnej szeroko??ci 240 cm. \r\nWykonany z drewna.', 'Szeroko????:   190-240 cm\r\n\r\nG????boko????:   110 cm\r\n\r\nWysoko????:    85 cm\r\n\r\nWaga:        55 kg', 560, 25, 15),
(104, 'ste7', 'https://image.ceneostatic.pl/data/products/57659629/i-dd-project-stol-szklany-atlantis-clear-140-200.jpg', 'St???? Tre-V5', 'St???? do jadalni blat wykonany z hartowanego szk??a, nogi wykonane z drewna.', 'Szeroko????:   215 cm\r\n\r\nG????boko????:   92 cm\r\n\r\nWysoko????:    75 cm\r\n\r\nWaga:        35 kg', 350, 10, 15),
(105, 'ste8', 'https://www.agatameble.pl/media/cache/gallery/rc/l4nbnikw/images/15/156191/0781-120-015-113-0001-p-1.jpg', 'St???? Oil-10V', 'Ma??y komfortowy stolik do jadalni wykonany z drewna.', 'Szeroko????:   150 cm\r\n\r\nG????boko????:   70 cm\r\n\r\nWysoko????:    79 cm\r\n\r\nWaga:        21 kg', 200, 11, 15),
(106, 'ki1', 'https://static.abra-meble.pl/catalog/product/m/i/milen_bezowy-czarny.jpg', 'Krzes??o Kos-4P', 'Krzes??o tapicerowane tkanin??, nogi wykonane z drewna.', 'Szeroko????:   42 cm\r\n\r\nG????boko????:   51 cm\r\n\r\nWysoko????:    85 cm\r\n\r\nMateria??y:   tkanina\r\n\r\nWaga:        6,4 kg', 120, 17, 16),
(107, 'ki2', 'https://static.abra-meble.pl/catalog/product/k/a/kama_czarny_2.jpg', 'Krzes??o Aprik', 'Krzes??o tapicerowane eko sk??r??, nogi wykonane z drewna.', 'Szeroko????:   44 cm\r\n\r\nG????boko????:   54 cm\r\n\r\nWysoko????:    81 cm\r\n\r\nMateria??y:   eko sk??ra\r\n\r\nWaga:        7,4 kg', 210, 5, 16),
(108, 'ki3', 'https://static.abra-meble.pl/catalog/product/k/a/kansas2-szary.jpg', 'Krzes??o Hyh-V', 'Krzes??o wykonane z drewna,siedlisko tapicerowane tkanin??.', 'Szeroko????:   54 cm\r\n\r\nG????boko????:   58 cm\r\n\r\nWysoko????:    91 cm\r\n\r\nMateria??y:   tkanina\r\n\r\nWaga:        6,4 kg', 190, 3, 16),
(109, 'ki4', 'https://static.abra-meble.pl/catalog/product/h/o/hose.jpg', 'Krzes??o Ulik', 'Krzes??o w ca??o??ci wykonane z drewna.', 'Szeroko????:   45 cm\r\n\r\nG????boko????:   46 cm\r\n\r\nWysoko????:    75 cm\r\n\r\nWaga:        6,4 kg', 110, 19, 16),
(110, 'ki5', 'https://static.abra-meble.pl/catalog/product/k/a/kansas_3_miodowy-szary.jpg', 'Krzes??o Arex-1', 'Krzes??o wykonane z drewna d??bowego,siedlisko tapicerowane tkanin??.', 'Szeroko????:   44 cm\r\n\r\nG????boko????:   55 cm\r\n\r\nWysoko????:    75 cm\r\n\r\nMateria??y:   tkanina\r\n\r\nWaga:        6,1 kg', 165, 21, 16),
(111, 'ki6', 'https://static.abra-meble.pl/catalog/product/g/o/gosia_-_trufel.jpg', 'Krzes??o Ytc', 'Krzes??o w ca??o??ci wykonane z drewna bukowego.', 'Szeroko????:   52 cm\r\n\r\nG????boko????:   52 cm\r\n\r\nWysoko????:    77 cm\r\n\r\nWaga:        6,1 kg', 150, 11, 16),
(112, 'ki7', 'https://static.abra-meble.pl/catalog/product/b/e/benitogrsz_krzeslo-benito-grafit-dab-szary-tap-112.jpg', 'Krzes??o Trepik-N', 'Krzes??o do jadalni wykonane z drewna.\r\nSiedlisko tapicerowane tkanin??.', 'Szeroko????:   52 cm\r\n\r\nG????boko????:   56 cm\r\n\r\nWysoko????:    75 cm\r\n\r\nMateria??y:   tkanina\r\n\r\nWaga:        5,1 kg', 240, 23, 16),
(113, 'ki8', 'https://static.abra-meble.pl/catalog/product/k/r/krzeslo-alvo-orzech-szary.jpg', 'Krzes??o Drex-A1', 'Krzes??o wykonane z drewna w kolorze br??zowym.', 'Szeroko????:   47 cm\r\n\r\nG????boko????:   54 cm\r\n\r\nWysoko????:    81 cm\r\n\r\nWaga:        6,7 kg', 110, 25, 16),
(114, 'kom2', 'https://static.abra-meble.pl/catalog/product/k/o/komoda-wa_ska-bo-09_skos.jpg', 'Komoda Inex-A', 'Komoda dwudrzwiowa z czterema szufladami,wykonana z drewna d??bu w kolorze ciemno br??zowym.', 'Szeroko????:   140 cm\r\n\r\nG????boko????:   39 cm\r\n\r\nWysoko????:    93 cm\r\n\r\nWaga:        84 kg', 520, 11, 17),
(115, 'kom1', 'https://static.abra-meble.pl/catalog/product/k/o/komoda-bo-07_skos.jpg', 'Komoda Ikil ', 'Solidna komoda wykonana z ca??o??ci z drewna.\r\nDwudrzwiowa z czterema szufladami.', 'Szeroko????:   152 cm\r\n\r\nG????boko????:   44 cm\r\n\r\nWysoko????:    91 cm\r\n\r\nWaga:        78 kg', 590, 10, 17),
(116, 'kom3', 'https://static.abra-meble.pl/catalog/product/k/o/komoda_sanremo_sanremo_45_1_.jpg', 'Komoda', 'Komoda wykonana z ca??o??ci z drewna dwudrzwiowa.', 'Szeroko????:   140 cm\r\n\r\nG????boko????:   59 cm\r\n\r\nWysoko????:    83 cm\r\n\r\nWaga:        54 kg', 543, 9, 17),
(117, 'kom4', 'https://static.abra-meble.pl/catalog/product/a/b/abra-16-06-27-one-poj-9-ok_1.jpg', 'Komoda Kix-2', 'Komoda w??ska wykonana z drewna d??bu,posiadaj??ca cztery szuflady.', 'Szeroko????:   790 cm\r\n\r\nG????boko????:   49 cm\r\n\r\nWysoko????:    83 cm\r\n\r\nWaga:        34 kg', 321, 15, 17),
(118, 'kom5', 'https://static.abra-meble.pl/catalog/product/a/b/abra-16-06-27-one-poj-8-sonoma.jpg', 'Komoda Eryox', 'Komoda niska czterodrzwiowa wykonana z drewna bukowego.', 'Szeroko????:   110 cm\r\n\r\nG????boko????:   59 cm\r\n\r\nWysoko????:    83 cm\r\n\r\nWaga:        42 kg', 333, 11, 17),
(119, 'kom6', 'https://static.abra-meble.pl/catalog/product/u/m/umo_3_wenge.jpg', 'Komoda Trip-N', 'Niska komoda posiadaj??ca trzy du??e szuflady.', 'Szeroko????:   92 cm\r\n\r\nG????boko????:   59 cm\r\n\r\nWysoko????:    73 cm\r\n\r\nWaga:        44 kg', 230, 21, 17),
(120, 'kom7', 'https://static.abra-meble.pl/catalog/product/z/o/zoya_p5_sonoma.jpg', 'Komoda Trip-N2', 'Wysoka komoda posiadaj??ca pi???? du??ych szuflad.\r\nWykonana z ca??o??ci z drewna.', 'Szeroko????:   72 cm\r\n\r\nG????boko????:   59 cm\r\n\r\nWysoko????:    113 cm\r\n\r\nWaga:        54 kg', 356, 23, 17),
(121, 'kom8', 'https://static.abra-meble.pl/catalog/product/e/l/elia_p6_140_sonoma.jpg', 'Komoda Hrex', 'Szeroka komoda posiadaj??ca sze???? szuflad, wykonana z ca??o??ci z drewna.', 'Szeroko????:   60 cm\r\n\r\nG????boko????:   69 cm\r\n\r\nWysoko????:    113 cm\r\n\r\nWaga:        24 kg', 340, 10, 17),
(122, 'wit1', 'https://static.abra-meble.pl/catalog/product/w/i/witryna_niska_enter_4c_1_v_1.jpg', 'Witryna Entrek', 'Witryna dwudrzwiowa wykonana z drewna bukowego, posiadaj??ca 6 p????ek wk??adanych.', 'Szeroko????:   79 cm\r\n\r\nG????boko????:   39 cm\r\n\r\nWysoko????:    123 cm\r\n\r\nWaga:        54 kg', 220, 12, 18),
(123, 'wit2', 'https://static.abra-meble.pl/catalog/product/a/b/abra-16-06-27-one-poj-1_1.jpg', 'Witryna Xop-2B', 'Wysoka witryna jednodrzwiowa posiadaj??ca trzy p????ki pod??wietlane obramowane szk??em.', 'Szeroko????:   72 cm\r\n\r\nG????boko????:   49 cm\r\n\r\nWysoko????:    183 cm\r\n\r\nWaga:        64 kg', 450, 20, 18),
(124, 'wit3', 'https://static.abra-meble.pl/catalog/product/w/i/witryna_sanremo_15_1_.jpg', 'Witryna Arui', 'Niska witryna dwudrzwiowa w kolorze bia??ym, p????ki pod??wietlane ledami.', 'Szeroko????:   82 cm\r\n\r\nG????boko????:   49 cm\r\n\r\nWysoko????:    85 cm\r\n\r\nWaga:        54 kg', 350, 24, 18),
(125, 'wit4', 'https://static.abra-meble.pl/catalog/product/w/i/witrynaniska-sandi_2_1_.jpg', 'Witryna Jyk-R8', 'Idealna witryna posiadaj??ca wiele p????ek,doskonale komponuje si?? do salonu.', 'Szeroko????:   132 cm\r\n\r\nG????boko????:   36 cm\r\n\r\nWysoko????:    143 cm\r\n\r\nWaga:        94 kg', 750, 10, 18),
(126, 'wit5', 'https://static.abra-meble.pl/catalog/product/w/i/witryna-wysoka-bo-02_skos.jpg', 'Witryna Olik-AP', 'Wysoka witryna jednodrzwiowa wykonana z ca??o??ci z drewna bukowego.', 'Szeroko????:   42 cm\r\n\r\nG????boko????:   39 cm\r\n\r\nWysoko????:    133 cm\r\n\r\nWaga:        62 kg', 456, 25, 18),
(127, 'wit6', 'https://static.abra-meble.pl/catalog/product/t/o/toro-witryna-bia_a.jpg', 'Witryna Yrek', 'Witryna niska umocowana na niskich n????kach z drewna,posiada wiele p????ek.', 'Szeroko????:   142 cm\r\n\r\nG????boko????:   42 cm\r\n\r\nWysoko????:    123 cm\r\n\r\nWaga:        68 kg', 555, 3, 18),
(128, 'wit7', 'https://static.abra-meble.pl/catalog/product/0/1/01_1.jpg', 'Witryna Begor', 'Wysoka jednodrzwiowa witryna idealna do salonu.', 'Szeroko????:   52 cm\r\n\r\nG????boko????:   39 cm\r\n\r\nWysoko????:    133 cm\r\n\r\nWaga:        45 kg', 650, 23, 18),
(129, 'wit8', 'https://static.abra-meble.pl/catalog/product/0/3/03_1.jpg', 'Witryna Nyn-A', 'Witryna dwudrzwiowa wykonana z drewna bukowego, posiadaj??ca 6 p????ek wk??adanych.', 'Szeroko????:   92 cm\r\n\r\nG????boko????:   45 cm\r\n\r\nWysoko????:    113 cm\r\n\r\nWaga:        75 kg', 700, 14, 18),
(130, 'lo1', 'https://static.abra-meble.pl/catalog/product/_/m/_mg_1904_2.jpg', '??????ko Urbik', 'Wygodne ??????ko w kolorze br??zowym.', 'Szeroko????:    185 cm\r\n\r\nG????boko????:    201 cm\r\n\r\nWysoko????:     90 cm\r\n\r\nPowierzchnia spania:   180x190 \r\n\r\n\r\n', 340, 12, 19),
(131, 'lo2', 'https://static.abra-meble.pl/catalog/product/_/m/_mg_1904_2.jpg', '??????ko Tryp-B', '??????ko tapicerowane tkanin??.\r\nIdealne ??????ko do sypialni.', 'Szeroko????:    195 cm\r\n\r\nG????boko????:    191 cm\r\n\r\nWysoko????:     90 cm\r\n\r\nPowierzchnia spania:   1750x191 \r\n\r\n\r\n', 780, 11, 19),
(132, 'lo3', 'https://static.abra-meble.pl/catalog/product/l/o/lozko-onyx-1.jpg', '??????ko Hrik', '??????ko z podwy??szonym siedziskiem na metalowych n????kach.', 'Szeroko????:    95cm\r\n\r\nG????boko????:    187 cm\r\n\r\nWysoko????:     85 cm\r\n\r\nPowierzchnia spania:   90x190 \r\n\r\n\r\n', 890, 14, 19),
(133, 'lo4', 'https://static.abra-meble.pl/catalog/product/a/b/abra-17-01-16-lozka-one-34_1.jpg', '??????ko Ypil', '??????ko Ypil jest wygodne w spaniu,zrobione z drewna d??bowego.', 'Szeroko????:    165 cm\r\n\r\nG????boko????:    181 cm\r\n\r\nWysoko????:     92 cm\r\n\r\nPowierzchnia spania:   140x170 \r\n\r\n\r\n', 650, 23, 19),
(134, 'lo5', 'https://static.abra-meble.pl/catalog/product/a/r/arsal__o_160_1_.jpg', '??????ko Wrip-A', '??????ko Wrip wykonane z drewna bukowego.\r\nMaterac twardy idealny do spania.', 'Szeroko????:    195 cm\r\n\r\nG????boko????:    197 cm\r\n\r\nWysoko????:     78 cm\r\n\r\nPowierzchnia spania:   150x192 \r\n\r\n\r\n', 875, 20, 19),
(135, 'lo6', 'https://static.abra-meble.pl/catalog/product/l/o/lozko_viki_10.jpg', '??????ko Abend3', 'Idealne ??????ko do sypialni,przestrzenne i komfortowe, wykonane z drewna.', 'Szeroko????:    205 cm\r\n\r\nG????boko????:    171 cm\r\n\r\nWysoko????:     82 cm\r\n\r\nPowierzchnia spania:   180x190 \r\n\r\n\r\n', 989, 5, 19),
(136, 'lo7', 'https://static.abra-meble.pl/catalog/product/l/e/lena_lozko-90-lefkas.jpg', '??????ko Drik', '??????ko Drik jednoosobowe , wykonane z solidnego drewna bukowego.', 'Szeroko????:    125 cm\r\n\r\nG????boko????:    101 cm\r\n\r\nWysoko????:     82 cm\r\n\r\n\r\n\r\n\r\n', 650, 7, 19),
(137, 'lo8', 'https://static.abra-meble.pl/catalog/product/_/o/_o_z_ko-colorado.jpg', '??????ko Rik5', 'Solidne i wytrzyma??e ??????ko.', 'Szeroko????:    185 cm\r\n\r\nG????boko????:    201 cm\r\n\r\nWysoko????:     90 cm\r\n\r\nPowierzchnia spania:   180x190 \r\n\r\n\r\n', 870, 7, 19),
(138, 'mate1', 'https://24materace.pl/1570-thickbox_default/kreta-materac-nawierzchniowy.jpg', 'Materac nawierzchniowy Kilx', 'Wygodny materac nawierzchniowy.', 'Szeroko????:   82 cm\r\n\r\nWysoko????:    4,2 cm\r\n\r\nG????boko????:   190 cm', 550, 13, 20),
(139, 'mate2', 'https://static.abra-meble.pl/catalog/product/c/o/comfort-kokos_7.jpg', 'Materac Prim5', 'Materac obustronnie pikowany.', 'Szeroko????:   89 cm\r\n\r\nWysoko????:    12 cm\r\n\r\nD??ugo????:     190 cm', 650, 11, 20),
(140, 'mate3', 'https://static.abra-meble.pl/catalog/product/p/e/perfect-przekro_j_4.jpg', 'Materac Miz', 'Materac spr????ynowy.\r\nWygodny w spaniu.', 'Szeroko????:   82 cm\r\n\r\nWysoko????:    11 cm\r\n\r\nD??ugo????:     1750 cm', 455, 11, 20),
(141, 'mate4', 'https://centrumopinii.pl/wp-content/uploads/2018/05/dormeo-hero-opinie-2.jpg', 'Materac Brikx', 'Wygodny materac nawierzchniowy.', 'Szeroko????:   75 cm\r\n\r\nWysoko????:    9cm\r\n\r\nG????boko????:   189cm', 654, 14, 20),
(142, 'mate5', 'https://static.abra-meble.pl/catalog/product/p/r/prestige_4.jpg', 'Materac Griko', 'Materac spr????ynowy.', 'Szeroko????:   78 cm\r\n\r\nWysoko????:    15 cm\r\n\r\nG????boko????:   172 cm', 459, 9, 20),
(143, 'mate6', 'https://static.abra-meble.pl/catalog/product/s/m/smart_opti_445_2.jpg', 'Materac Hrix3', 'Materac wykonany z najlepszych surowc??w.', 'Szeroko????:   89 cm\r\n\r\nWysoko????:    7 cm\r\n\r\nG????boko????:   192 cm', 567, 11, 20),
(144, 'mate7', 'https://www.panmaterac.pl/1891-thickbox_default/materac-dzieciecy-iris.jpg', 'Materac Grep4', 'Materac dzieci??cy Grep4 jest mi??kki i elastyczny idealny do spania dla dzieci.', 'Szeroko????:   42 cm\r\n\r\nWysoko????:    5 cm\r\n\r\nG????boko????:   150 cm', 320, 12, 20),
(145, 'mate8', 'https://static.abra-meble.pl/catalog/product/p/r/prestige-alergik_2.jpg', 'Materac Ikil1', 'Materac obustronnie pikowany.\r\nWygodny w spaniu.', 'Szeroko????:   86 cm\r\n\r\nWysoko????:    13 cm\r\n\r\nG????boko????:   192 cm', 421, 18, 20),
(146, 'luk1', 'https://www.agatameble.pl/media/cache/gallery/rc/qnt0v1t0/images/11/112793/i-12.jpg', 'Lustro Viks', 'Eleganckie lustro obramowane drewnem bukowym.', 'Wysoko????:   70 cm\r\n\r\nG????boko????:  4  cm\r\n\r\nSzeroko????:  110 cm', 270, 10, 23),
(147, 'luk2', 'https://www.agatameble.pl/media/cache/gallery/rc/jch7slf9/images/16/162771/marsylia-p12.jpg', 'Lustro Prixl', 'Przestrzenne lustro wyko??czone drewnem.', 'Wysoko????:   73 cm\r\n\r\nG????boko????:  10  cm\r\n\r\nSzeroko????:  93 cm', 175, 170, 23),
(148, 'luk3', 'https://www.agatameble.pl/media/cache/gallery/rc/jzy6ny8b/images/72/72926/0797-004-012-005-0001-p-1.jpg', 'Lustro Xis', 'Lustro firmy Xis.', 'Wysoko????:   77 cm\r\n\r\nG????boko????:  6  cm\r\n\r\nSzeroko????:  94 cm', 345, 10, 23),
(149, 'luk4', 'https://www.agatameble.pl/media/cache/gallery/rc/ks45bc73/images/10/103374/palermo-80.jpg', 'Lustro Vretx', 'Eleganckie lustro obramowane drewnem.', 'Wysoko????:   82 cm\r\n\r\nG????boko????:  11  cm\r\n\r\nSzeroko????:  121 cm', 322, 12, 23),
(150, 'luk5', 'https://www.agatameble.pl/media/cache/gallery/rc/ogu0ipiu/images/47/4799/LL-01.jpg', 'Lustro Fop2', 'Lustro idealne do Sypialni.', 'Wysoko????:   84 cm\r\n\r\nG????boko????:  12  cm\r\n\r\nSzeroko????:  111 cm', 432, 11, 23),
(151, 'luk6', 'https://www.agatameble.pl/media/cache/gallery/rc/tvpffw46/images/73/73362/1130-098-012-178-0001-p-1.jpg', 'Lustro Hrekx', 'Lustro wykonane ze szk??a hartowanego.', 'Wysoko????:   72 cm\r\n\r\nG????boko????:  9  cm\r\n\r\nSzeroko????:  101 cm', 465, 15, 23),
(152, 'luk7', 'https://www.agatameble.pl/media/cache/gallery/rc/xiirlsbp/images/10/106670/1196-066-012-076-0002_p1.jpg', 'Lustro Olis', 'Ma??e lustro idealne do sypialni.', 'Wysoko????:   62 cm\r\n\r\nG????boko????:  5  cm\r\n\r\nSzeroko????:  92 cm', 110, 21, 23),
(153, 'luk8', 'https://www.agatameble.pl/media/cache/gallery/rc/winjl9wd/images/67/67408/1124-061-012-093-0002.jpg', 'Lustro Xipx', 'Przestrzenne lustro wyko??czone drewnem.', 'Wysoko????:   84 cm\r\n\r\nG????boko????:  9  cm\r\n\r\nSzeroko????:  111 cm', 432, 10, 23),
(154, 'sza1', 'https://static.abra-meble.pl/catalog/product/a/b/abra-18-06-18-avola-sonoma-_-lustro_1.jpg', 'Szafa Axik', 'Szafa dwudrzwiowa wykonana z drewna.', 'Szeroko????:   150 cm\r\n\r\nG????boko????:   65  cm\r\n\r\nWysoko????:    210 cm\r\n\r\n', 650, 11, 21),
(155, 'sza3', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_avola_d_b_sonoma_czekolada_sonoma_jasna_1_.jpg', 'Szafa Icyt', 'Szafa dwudrzwiowa rozsuwana na boki wykonana z drewna.', 'Szeroko????:   165 cm\r\n\r\nG????boko????:   75  cm\r\n\r\nWysoko????:    198 cm\r\n\r\n', 580, 17, 21),
(156, 'sza2', 'https://static.abra-meble.pl/catalog/product/v/e/verona-sonoma-czekolada_lustro_szprosy_1_.jpg', 'Szafa Wikix', 'Szafa dwudrzwiowa z wbudowany lustrem na drzwiach.', 'Szeroko????:   133 cm\r\n\r\nG????boko????:   72  cm\r\n\r\nWysoko????:    204 cm\r\n\r\n', 670, 21, 21),
(157, 'sza4', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_duo_15-dab-sonoma_1_.jpg', 'Szafa Mixk', 'Szafa dwudrzwiowa posiadaj??ca dwie rozsuwane szuflady.', 'Szeroko????:   174 cm\r\n\r\nG????boko????:   85  cm\r\n\r\nWysoko????:    212 cm\r\n\r\n', 760, 15, 21),
(158, 'sza5', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_torino_1d_d_b_s.czekolada_d_b_sonoma_1_.jpg', 'Szafa Joxp', 'Szafa jednodrzwiowa posiadaj??ca sze???? p????ek.', 'Szeroko????:   75 cm\r\n\r\nG????boko????:   55  cm\r\n\r\nWysoko????:    192 cm\r\n\r\n', 490, 11, 21),
(159, 'sza6', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_torino_2d_d_b_s.czekolada_d_b_sonoma_1_.jpg', 'Szafa Drix2', 'Szafa dwudrzwiowa posiadaj??ca dwie wk??adane p????ki,g????boka. ', 'Szeroko????:   160 cm\r\n\r\nG????boko????:   85  cm\r\n\r\nWysoko????:    203 cm\r\n\r\n', 876, 6, 21);
INSERT INTO `produkty` (`id`, `id_zdjec`, `id_opisu_zdj`, `nazwa`, `opis`, `parametry`, `cena`, `ilosc`, `id_podkategoria`) VALUES
(160, 'sza7', 'https://static.abra-meble.pl/catalog/product/a/b/abra-17-01-26-szafy-napoli-sonoma-50cm-bok.jpg', 'Szafa Qtk2', 'Szafa jednodrzwiowa wykonana z drewna, posiadaj??ca pi???? wk??adanych p????ek.', 'Szeroko????:   67 cm\r\n\r\nG????boko????:   45  cm\r\n\r\nWysoko????:    182 cm\r\n\r\n', 565, 10, 21),
(161, 'sza8', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_1.jpg', 'Szafa Ikil', 'Szafa dwudrzwiowa wykonana z drewna.', 'Szeroko????:   170 cm\r\n\r\nG????boko????:   85  cm\r\n\r\nWysoko????:    210 cm\r\n\r\n', 967, 5, 21);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `promocja`
--

CREATE TABLE `promocja` (
  `id` int(11) NOT NULL,
  `id_zdjec` text COLLATE utf8mb4_polish_ci NOT NULL,
  `id_opisu_zdj` text COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwa` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` float NOT NULL,
  `ilosc` int(11) NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `parametry` text COLLATE utf8mb4_polish_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `promocja`
--

INSERT INTO `promocja` (`id`, `id_zdjec`, `id_opisu_zdj`, `nazwa`, `cena`, `ilosc`, `opis`, `parametry`, `data`) VALUES
(1, 'prom1', 'https://cdn.arena.pl/f23fdc36619389e106220f494833ab3f-product_lightbox.jpg', '??????ko Nix2', 750, 10, 'Wygodne ??????ko posiadaj??cy materac spr????ynowy.', 'Wysoko????:     65 cm\r\n\r\nD??ugo????:      192 cm\r\n\r\nSzeroko????:    85 cm', '2019-09-23'),
(2, 'prom2', 'https://mateomarket.pl/img/products/17/57/7/1_max.jpg', 'Umywalka Roka', 245, 10, 'Umywalka wykonana z ceramiki.', 'Wysoko????:     10 cm\r\n\r\nD??ugo????:      42 cm\r\n\r\nSzeroko????:    65 cm', '2019-07-17'),
(3, 'prom3', 'https://www.ikea.com/pl/pl/images/products/songe-lustro-szary__0637813_PE698606_S4.JPG', 'Lustro Uxus', 250, 9, 'Lustro wykonane z hartowanego szk??a.', 'Wysoko????:     55 cm\r\n\r\nGrubo????:      3 cm\r\n\r\nSzeroko????:    65 cm', '2019-07-04'),
(4, 'prom4', 'https://images.obi.pl/product/PL/1500x1500/600931_1.jpg', 'Blat Umul', 250, 12, 'Solidny blat przeznaczony do szafki kuchennej.', 'Wysoko????:     75 cm\r\n\r\nGrubo????:      6cm\r\n\r\nSzeroko????:    55 cm', '2019-07-06'),
(5, 'prom5', 'https://cdn4.jysk.com/getimage/wd2.large/13904', 'St???? Brim', 341, 11, 'St???? wykonany z drewna bukowego.', 'Wysoko????:     65 cm\r\n\r\nD??ugo????:      142 cm\r\n\r\nSzeroko????:    95 cm', '2019-08-14'),
(6, 'prom6', 'https://s.mamotoja.pl/media/cache/450x450/media/product/200812/855_01_4086.jpg', 'Materac Lipi2', 444, 4, 'Materac zrobiony z solidnych surowc??w.', 'D??ugo????:     195 cm\r\n\r\nGrubo????:      12 cm\r\n\r\nSzeroko????:    85 cm', '2019-07-20'),
(7, 'prom7', 'https://www.bettso.pl/9853-large_default/alon-stol-rozkladany-buk-ibsenbialy.jpg', 'St???? Wix-B', 431, 9, 'St???? rozk??adany do maksymalnej d??ugo??ci 240 cm.\r\nWykonany z drewna bukowego.', 'Wysoko????:     75 cm\r\n\r\nD??ugo????:      192x240 cm\r\n\r\nSzeroko????:   85 cm', '2019-08-30'),
(8, 'prom8', 'https://www.sklep.stolarstwo-smaza.pl/environment/cache/images/500_500_productGfx_2b15b6c3926e670ba52acb816bf0f4f2.jpg', 'Lustro Azix', 431, 21, 'Pod??wietlane lustro.', 'Wysoko????:     65 cm\r\n\r\nGrubo????:      4 cm\r\n\r\nSzeroko????:    65 cm', '2019-10-28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `user` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `pass` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `user`, `pass`, `email`) VALUES
(1, 'monek', '$2y$10$6yqZDh5IaSwVkWmg0dmBlu55f9eKOnxa73zoNCoVXEm6KNQl7lO3u', 'mon@op.pl'),
(3, 'Darek', '$2y$10$QZM070f4EpKLHw8IpQLt2uLh8lELbIW6XZlY0YtQa6yAt/GL0h/EK', 'd@o2.pl'),
(4, 'olek', '$2y$10$cEETIS306g25mHT/9aKOauuKE75HiXXpkcGYijfJlpPsUFiXpYFbq', 'olek@1.pl'),
(5, 'admin', '$2y$10$P/dcIQegNGE14.qSLi2oaeK6JhBd2ZxZSDbuu/N/.tp18vwoKETh6', 'admin@admin.pl'),
(6, 'ala', '$2y$10$3eenPM6UUzYtJ6gveAS4.ObbYbDvDTsWieldeRFYOvCGXFM4QVd2y', 'al@o2.pl'),
(8, 'Karol', '$2y$10$9T9AxBXv882vlQo0z4AIfOMdgDSCAy5Gx61YaJeJUgn5WjxWIq2cS', 'k@o2.pl'),
(9, 'marek', '$2y$10$unLz6vMHYlr47cBOL7cNv.Hpb3jJlw3o6xH9uU2zYsjfWhPJspXMu', 'ma@o2.pl'),
(10, 'selek', '$2y$10$pYHCbzgCtP3xWdKj7NIzd.jYUhp35zCrWE5SoSjJCSDUMMpnei2v2', 'a2@op.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy2`
--

CREATE TABLE `uzytkownicy2` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_polish_ci NOT NULL,
  `pass` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy2`
--

INSERT INTO `uzytkownicy2` (`id`, `user`, `pass`, `email`) VALUES
(1, 'Dania', '$2y$10$pXJdA9smPJqPn8A0I3LmD.95.sDZbhaE7l/OZh9QfjuKtPAHRwwR6', 'dania@o2.pl'),
(2, 'Madzia', '$2y$10$XRNwtK1qIJcRuPooe2LKS.Z0gX/w5CZCgdFO/4EEkGiXbyxNeZNES', 'madzia@o2.pl'),
(3, 'Maja', '$2y$10$iO3S7Zwe1MULDOoqmNxvUOKl3BXNsGVWLWyAH.xPwL.vyUpPMxIcy', 'maja@o3.pl'),
(4, 'Marek', '$2y$10$/.Ui8fcinY4ZPZ8jTS4Tce57WHWDtyruUiC8XK5AI7wSyl0ez6qaS', 'mapo@o2.pl'),
(6, 'Darek', '$2y$10$6g3HSfG0vkJbh/Y.o4WsBuGXyzmcHy6Fr8t9sfBUp1G.8INWpmExS', 'dareczek@o2.pl'),
(7, 'Ola', '$2y$10$jYN5UeqHT8qrQGKSiJrEgufJTYdTwp4aoKSBSkcFjeBDxxhRh1K5e', 'ola@o2.pl'),
(8, 'Iza', '$2y$10$NaM7YqDmZVeHR5d2GZPvF.6HRTYWGspikTDGTGz3DUM83YjAv4hGu', 'iza@o2.pl'),
(9, 'Elek', '$2y$10$GEUiZwo8KFY2Pu6JOSBN1OjDMc2xknwI3b2Grt5Mm/vcB/NdSikY2', 'ele@o2.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(10) NOT NULL,
  `id_towaru` int(10) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzut??w tabel
--

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_promocji` (`id_promocji`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `podkategoria`
--
ALTER TABLE `podkategoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategoria` (`id_kategoria`);

--
-- Indexes for table `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_podkategoria` (`id_podkategoria`);
ALTER TABLE `produkty` ADD FULLTEXT KEY `nazwa` (`nazwa`);

--
-- Indexes for table `promocja`
--
ALTER TABLE `promocja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uzytkownicy2`
--
ALTER TABLE `uzytkownicy2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT dla tabeli `podkategoria`
--
ALTER TABLE `podkategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT dla tabeli `promocja`
--
ALTER TABLE `promocja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `uzytkownicy2`
--
ALTER TABLE `uzytkownicy2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ograniczenia dla zrzut??w tabel
--

--
-- Ograniczenia dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD CONSTRAINT `koszyk_ibfk_1` FOREIGN KEY (`id_promocji`) REFERENCES `promocja` (`id`),
  ADD CONSTRAINT `koszyk_ibfk_2` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id`),
  ADD CONSTRAINT `koszyk_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `produkty` (`id`);

--
-- Ograniczenia dla tabeli `podkategoria`
--
ALTER TABLE `podkategoria`
  ADD CONSTRAINT `podkategoria_ibfk_1` FOREIGN KEY (`id_kategoria`) REFERENCES `kategoria` (`id`);

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`id_podkategoria`) REFERENCES `podkategoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
