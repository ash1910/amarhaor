-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 25, 2022 at 09:03 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentalcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_logs`
--

CREATE TABLE `auth_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topbar_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topbar_menu_items` json DEFAULT NULL,
  `social_media_menu_items` json DEFAULT NULL,
  `home_top_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_top_img2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_top_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_top_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_content_items` json DEFAULT NULL,
  `about_content_items` json DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cookie_policy_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cookie_policy_content` text COLLATE utf8_unicode_ci,
  `privacy_policy_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_policy_content` text COLLATE utf8_unicode_ci,
  `terms_conditions_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_conditions_content` text COLLATE utf8_unicode_ci,
  `footer_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_link_items` json DEFAULT NULL,
  `footer_copyright_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `topbar_logo`, `topbar_menu_items`, `social_media_menu_items`, `home_top_img`, `home_top_img2`, `home_top_title`, `home_top_text`, `home_content_items`, `about_content_items`, `contact_title`, `contact_img`, `cookie_policy_title`, `cookie_policy_content`, `privacy_policy_title`, `privacy_policy_content`, `terms_conditions_title`, `terms_conditions_content`, `footer_logo`, `footer_link_items`, `footer_copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'uploads/images/f9c2262f1f6d02b3965da39c5eb32532.png', '[{\"url\": \"/about-us\", \"text\": \"Meistä\"}, {\"url\": \"/contact-us\", \"text\": \"Ota meihin yhteyttä\"}]', '[{\"url\": \"https://www.facebook.com\", \"icon\": \"fab fa-facebook-f\"}, {\"url\": \"https://twitter.com\", \"icon\": \"fab fa-twitter\"}, {\"url\": \"https://www.instagram.com\", \"icon\": \"fab fa-instagram\"}]', 'uploads/images/c648ca40f6facc8d8019efbc00baa774.jpeg', 'uploads/images/74cc4a6e47c8aec3f9a75b7633d2ddde.jpeg', 'Suomen parhaat urheilubaarit 2022', 'Urheilumerkit listaa, arvostelee ja vertailee Suomen parhaita baareja ja erityisesti urheilubaareja. Asiantuntijamme vertailevat jokaista urheilubrändiä tarjousten, live-urheilun, juomavalikoiman ja ruoan suhteen. Katso parhaat merkit alta.', '[{\"url\": \"https://olearys.fi\", \"text\": \"<p>O&#39;Learys on bostonilaiseen naapuribaarin tyyliin tyypillisi&auml; ep&auml;virallisia tapahtumaravintoloita riippumatta siit&auml;, miss&auml; ne ovat. Tarjoamme asiakkaillemme t&auml;ydellisen el&auml;myksen, jossa yhdistyv&auml;t urheilu, amerikkalainen ruoka, selke&auml; ymp&auml;rist&ouml; ja yst&auml;v&auml;llinen ilmapiiri musiikin ja muun viihteen kera. Konsepti on suunnattu laajalle asiakaskunnalle, niin yksityishenkil&ouml;ille kuin liikemiehillekin.</p>\\n\", \"image\": \"/uploads/images/cb8fd71beb208ec29f697b474785d642.jpeg\", \"title\": \"O’Learys Sportsbar\"}, {\"url\": \"https://matsibar.fi\", \"text\": \"<p>Jyv&auml;skyl&auml;n syd&auml;mess&auml; sijaitseva Matsi Bar on rento urheilubaari, jossa on sauna. Heill&auml; on kaikki urheilukanavat saatavilla.&lt;br&gt;<br />\\nUpeat tilat jakautuvat kolmeen kerrokseen. 2 valtavaa n&auml;ytt&ouml;&auml;, 10 taulutelevisiota, mahdollisuus kolmeen eri &auml;&auml;nimaailmaan ja muut katsojat tekev&auml;t penkkiurheilukokemuksestasi ikimuistoisen.</p>\\n\", \"image\": \"/uploads/images/b0b9b6cc72cd4a86e87f9178b5693f36.jpeg\", \"title\": \"Marsibar\"}, {\"url\": \"http://www.sportbartoolo.fi\", \"text\": \"<p>Historiallinen A-lisensoitu Ravintola T&ouml;&ouml;l&ouml;, joka tunnetaan yleisesti nimell&auml; Akatemia, on perustettu vuonna 1938 ja on loistava kohde hyv&auml;n ruoan, juoman ja urheilun yst&auml;ville. Sports Barissa on seitsem&auml;n televisiota ja suuri n&auml;ytt&ouml;, josta voit seurata p&auml;iv&auml;n tapahtumia. Laajan urheiluvalikoiman, v&auml;lipalojen ja tietokilpailujen ansiosta viihdyt varmasti.</p>\\n\", \"image\": \"/uploads/images/4d4c6187d98622cd878d6777221a833d.jpeg\", \"title\": \"Sports bar Toolo\"}, {\"url\": \"https://aussiebar.net\", \"text\": \"<p>Aussie-pubissa voit katsella kaikkia parhaita jalkapallo-otteluita. Nyt kun Valioliiga on palannut t&auml;ydess&auml; vauhdissa, nauti siit&auml;! Joka viikonloppu on suoria otteluita sek&auml; j&auml;&auml;kiekkoa ja Formula 1:t&auml;, NRL:&auml;&auml; ja rugbyunionia! Kaikki urheilupelit, joita saatat haluta katsoa, ​​ovat saatavilla Aussie-baarissa. Sinulla on loistava ilta, kun lis&auml;&auml;t siihen erinomaisen el&auml;v&auml;n musiikin, ruoan ja juoman.</p>\\n\", \"image\": \"/uploads/images/e06f60341443a2e31a9785acbc639edc.jpeg\", \"title\": \"Aussiebar\"}, {\"url\": \"http://www.barbronco.fi\", \"text\": \"<p>Bar Bronco on yksi Helsingin parhaista urheilubaareista. Siit&auml; tulee yh&auml; suositumpi lautapelien ja live-urheilun vuoksi. T&auml;&auml;lt&auml; saa joitain Suomen parhaista hampurilaisista ja siell&auml; on huikeita tarjouksia.</p>\\n\", \"image\": \"/uploads/images/ef38e45de9bf6255d3b2c5a80dbda30e.jpeg\", \"title\": \"Bar Bronco\"}, {\"url\": \"https://www.raflaamo.fi/fi/kotka/players-sports-bar\", \"text\": \"<p>Kaikki t&auml;m&auml; on saavutettavissa Playersiss&auml;, halusitpa sitten sy&ouml;d&auml;, saunoa, pelata biljardia tai vaikka kulhoon!<br />\\nVoit seurata urheilua suurelta n&auml;yt&ouml;lt&auml; tai kokea urheiluhuumeita suoraan saunan lauteilta penkkiurheilijan taivaaksi tunnetulta kilpaosastoltamme.<br />\\nLaajasta valikoimastamme l&ouml;yd&auml;t herkullisia kisoja sek&auml; janoon ett&auml; n&auml;lk&auml;&auml;n.<br />\\nOlemme listanneet 6 parasta urheilubaaria, mutta niit&auml; on monia muitakin. Arvioimme tuotemerkit kaikessa ruoasta, televisioruuduista, musiikista ja jopa vedonly&ouml;ntialustoista. Koe live-urheilun parhaat puolet t&auml;n&auml;&auml;n ja tule osaksi toimintaa.</p>\\n\", \"image\": \"/uploads/images/32eb9635b999a814637b4cac26e1184e.jpeg\", \"title\": \"Raflaamo\"}]', '[{\"text\": \"Täältä löydät uusimmat päivitykset ja arvostelut parhaista live-urheilutapahtumista. Voit olla varma, että parhaat listamme sisältää vain parhaat tapahtumapaikat. Jokainen tapahtumapaikka on tarkastettu ja testattu asiantuntijatiimimme puolesta. Olemme keränneet paljon tietoa, joka auttaa sinua valmistautumaan ainutlaatuiseen kokemukseen. Katso kotisivultamme henkilökohtaisia ​​tietoja, tapahtumapaikkoja, arvosteluja ja muuta hyödyllistä tietoa. Voit myös kysyä meiltä kysymyksiä \\\"Ota yhteyttä\\\" -osiossa.\", \"image\": \"/uploads/images/9a4e4732899bfced9699b96481778b44.jpeg\"}, {\"text\": \"On tärkeää muistaa, että teemme tämän huvin vuoksi emmekä saa palkkioita millään mainostetuista merkeistä. Jos haluat liittyä listalle, ota yhteyttä, niin olemme sinuun yhteydessä.\", \"image\": \"/uploads/images/0ad4f7fc4823fe21888b9ce08ef6f52c.jpeg\"}]', 'Ota meihin yhteyttä', 'uploads/images/b7efa6fb29223068bef3c9af3c993c4a.png', 'Keksit', '<p>Ev&auml;stek&auml;yt&auml;nt&ouml; sivustolle <a href=\"https://urheilumerkit.com\">urheilumerkit.com</a></p>\r\n\r\n<p>T&auml;m&auml; on urheilumerkit.comin ev&auml;stek&auml;yt&auml;nt&ouml;, joka on saatavilla osoitteesta urheilumerkit.com</p>\r\n\r\n<h2>Mit&auml; ev&auml;steet ovat</h2>\r\n\r\n<p>Kuten l&auml;hes kaikilla ammattisivustoilla on yleinen k&auml;yt&auml;nt&ouml;, t&auml;m&auml; sivusto k&auml;ytt&auml;&auml; ev&auml;steit&auml;, jotka ovat pieni&auml; tiedostoja, jotka ladataan tietokoneellesi k&auml;ytt&ouml;kokemuksesi parantamiseksi. T&auml;ll&auml; sivulla kuvataan, mit&auml; tietoja he ker&auml;&auml;v&auml;t, kuinka k&auml;yt&auml;mme niit&auml; ja miksi meid&auml;n on joskus tallennettava n&auml;m&auml; ev&auml;steet. Kerromme my&ouml;s, kuinka voit est&auml;&auml; n&auml;iden ev&auml;steiden tallentamisen, mutta t&auml;m&auml; voi heikent&auml;&auml; tai &quot;rikkoa&quot; tiettyj&auml; sivuston toimintojen osia.</p>\r\n\r\n<h2>Asettamamme ev&auml;steet</h2>\r\n\r\n<p>Sivustoasetusten ev&auml;steet</p>\r\n\r\n<p>Voidaksemme tarjota sinulle erinomaisen kokemuksen t&auml;ll&auml; sivustolla tarjoamme toiminnot, joiden avulla voit m&auml;&auml;ritt&auml;&auml; mieltymyksesi t&auml;m&auml;n sivuston toiminnalle, kun k&auml;yt&auml;t sit&auml;. Muistaaksemme asetuksesi meid&auml;n on asetettava ev&auml;steet, jotta n&auml;m&auml; tiedot voidaan kutsua aina, kun olet vuorovaikutuksessa sivun kanssa, johon asetuksesi vaikuttavat.</p>\r\n\r\n<h2>Kolmannen osapuolen ev&auml;steet</h2>\r\n\r\n<p>Joissakin erikoistapauksissa k&auml;yt&auml;mme my&ouml;s luotettujen kolmansien osapuolien ev&auml;steit&auml;. Seuraavassa osiossa kerrotaan, mit&auml; kolmannen osapuolen ev&auml;steit&auml; saatat kohdata t&auml;m&auml;n sivuston kautta.</p>\r\n\r\n<p>Useat kumppanit mainostavat puolestamme, ja tyt&auml;ryritysten seurantaev&auml;steiden avulla voimme vain n&auml;hd&auml;, ovatko asiakkaamme tulleet sivustolle jonkin kumppanisivustomme kautta, jotta voimme hyvitt&auml;&auml; heid&auml;t asianmukaisesti ja sallia kumppanikumppaneidemme tarjota mahdollisia bonuksia. tarjota sinulle ostoksen tekemist&auml;.</p>\r\n\r\n<h2>Lis&auml;&auml; tietoa</h2>\r\n\r\n<p>Toivottavasti t&auml;m&auml; on selvent&auml;nyt asioita sinulle, ja kuten aiemmin mainittiin, jos et ole varma, tarvitsetko jotain, on yleens&auml; turvallisempaa j&auml;tt&auml;&auml; ev&auml;steet k&auml;ytt&ouml;&ouml;n, jos ne ovat vuorovaikutuksessa jonkin sivustollamme k&auml;ytt&auml;mist&auml;si ominaisuuksista.</p>\r\n\r\n<p>Jos kuitenkin viel&auml; etsit lis&auml;tietoja, voit ottaa meihin yhteytt&auml; jollakin seuraavista yhteydenottotavoistamme:</p>\r\n\r\n<p>S&auml;hk&ouml;posti: <a href=\"mailto:info@urheilumerkit.com\">info@urheilumerkit.com</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Tietosuojakäytäntö', '<h2>Urheilumerkit -tietosuojak&auml;yt&auml;nt&ouml;</h2>\r\n\r\n<p>Urheilumerkit.comista saatavilla olevalla urheilumerkityll&auml; yksi t&auml;rkeimmist&auml; prioriteeteistamme on vierailijoiden yksityisyys. T&auml;m&auml; tietosuojaseloste sis&auml;lt&auml;&auml; erilaisia ​​tietoja, joita urheilumerkit ker&auml;&auml; ja tallentaa sek&auml; kuinka k&auml;yt&auml;mme niit&auml;.</p>\r\n\r\n<p>Jos sinulla on lis&auml;kysymyksi&auml; tai tarvitset lis&auml;tietoja tietosuojak&auml;yt&auml;nn&ouml;st&auml;mme, &auml;l&auml; ep&auml;r&ouml;i ottaa meihin yhteytt&auml;.</p>\r\n\r\n<p>T&auml;m&auml; tietosuojak&auml;yt&auml;nt&ouml; koskee vain verkkotoimintaamme ja koskee verkkosivuillamme vierailijoita niiden tietojen osalta, joita he jakavat ja/tai ker&auml;&auml;v&auml;t urheilumerkit. T&auml;t&auml; k&auml;yt&auml;nt&ouml;&auml; ei sovelleta tietoihin, jotka on ker&auml;tty offline-tilassa tai muiden kanavien kuin t&auml;m&auml;n verkkosivuston kautta. Tietosuojak&auml;yt&auml;nt&ouml;mme luotiin Free Privacy Policy Generatorin avulla.</p>\r\n\r\n<h2>suostumus</h2>\r\n\r\n<p>K&auml;ytt&auml;m&auml;ll&auml; verkkosivustoamme hyv&auml;ksyt tietosuojak&auml;yt&auml;nt&ouml;mme ja sen ehdot.</p>\r\n\r\n<h2>Ker&auml;&auml;m&auml;mme tiedot</h2>\r\n\r\n<p>Henkil&ouml;tiedot, jotka sinua pyydet&auml;&auml;n antamaan, ja syyt, miksi sinua pyydet&auml;&auml;n antamaan ne, ilmoitetaan sinulle, kun pyyd&auml;mme sinua antamaan henkil&ouml;tietosi.</p>\r\n\r\n<p>Jos otat meihin yhteytt&auml; suoraan, voimme saada sinusta lis&auml;tietoja, kuten nimesi, s&auml;hk&ouml;postiosoitteesi, puhelinnumerosi, meille l&auml;hett&auml;m&auml;si viestin ja/tai liitteiden sis&auml;lt&ouml; ja kaikki muut tiedot, jotka voit antaa.</p>\r\n\r\n<p>Kun rekister&ouml;idyt Tilille, voimme pyyt&auml;&auml; yhteystietojasi, mukaan lukien nimi, yrityksen nimi, osoite, s&auml;hk&ouml;postiosoite ja puhelinnumero.</p>\r\n\r\n<h2>Kuinka k&auml;yt&auml;mme tietojasi</h2>\r\n\r\n<p>K&auml;yt&auml;mme ker&auml;&auml;mi&auml;mme tietoja eri tavoilla, mukaan lukien:</p>\r\n\r\n<p>Tarjoamme, k&auml;yt&auml;mme ja yll&auml;pid&auml;mme verkkosivustoamme</p>\r\n\r\n<p>Paranna, personoi ja laajenna verkkosivustoamme</p>\r\n\r\n<p>Ymm&auml;rr&auml; ja analysoi, kuinka k&auml;yt&auml;t verkkosivustoamme</p>\r\n\r\n<p>Kehit&auml; uusia tuotteita, palveluita, ominaisuuksia ja toimintoja</p>\r\n\r\n<p>kommunikoida kanssasi joko suoraan tai kumppanimme kautta, my&ouml;s asiakaspalvelua varten, tarjotaksemme sinulle p&auml;ivityksi&auml; ja muita verkkosivustoon liittyvi&auml; tietoja sek&auml; markkinointi- ja myynninedist&auml;mistarkoituksia varten</p>\r\n\r\n<p>L&auml;het&auml; sinulle s&auml;hk&ouml;posteja</p>\r\n\r\n<p>Etsi ja est&auml; petokset</p>\r\n\r\n<p>Lokitiedostot</p>\r\n\r\n<p>urheilumerkit noudattaa normaalia lokitiedostojen k&auml;ytt&ouml;&auml;. N&auml;m&auml; tiedostot kirjaavat k&auml;vij&ouml;it&auml;, kun he vierailevat verkkosivustoilla. Kaikki hosting-yritykset tekev&auml;t t&auml;m&auml;n ja osan hosting-palvelujen analytiikkaa. Lokitiedostojen ker&auml;&auml;mi&auml; tietoja ovat IP-osoitteet, selaimen tyyppi, Internet-palveluntarjoaja (ISP), p&auml;iv&auml;m&auml;&auml;r&auml;- ja aikaleima, viittaus-/poistumissivut ja mahdollisesti napsautusten m&auml;&auml;r&auml;. N&auml;it&auml; ei ole linkitetty mihink&auml;&auml;n henkil&ouml;kohtaisesti tunnistettavissa olevaan tietoon. Tietojen tarkoitus on analysoida trendej&auml;, hallinnoida sivustoa, seurata k&auml;ytt&auml;jien liikkumista sivustolla ja ker&auml;t&auml; v&auml;est&ouml;tietoja.</p>\r\n\r\n<h2>Mainoskumppanimme</h2>\r\n\r\n<p>Jotkut sivustomme mainostajat voivat k&auml;ytt&auml;&auml; ev&auml;steit&auml; ja j&auml;ljitteit&auml;. Mainoskumppanimme on lueteltu alla. Jokaisella mainoskumppanillamme on oma tietosuojak&auml;yt&auml;nt&ouml;ns&auml; k&auml;ytt&auml;j&auml;tietoja koskeville k&auml;yt&auml;nn&ouml;illeen. P&auml;&auml;syn helpottamiseksi olemme linkitt&auml;neet alla heid&auml;n tietosuojak&auml;yt&auml;nt&ouml;ihins&auml;.</p>\r\n\r\n<h2>Google</h2>\r\n\r\n<p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n\r\n<p>Advertising Partnersin tietosuojak&auml;yt&auml;nn&ouml;t</p>\r\n\r\n<p>T&auml;st&auml; listasta l&ouml;yd&auml;t jokaisen urheilumerkit-mainoskumppanin tietosuojak&auml;yt&auml;nn&ouml;n.</p>\r\n\r\n<p>Kolmannen osapuolen mainospalvelimet tai mainosverkostot k&auml;ytt&auml;v&auml;t teknologioita, kuten ev&auml;steit&auml;, JavaScripti&auml; tai verkkoj&auml;ljitteit&auml;, joita k&auml;ytet&auml;&auml;n niiden mainoksissa ja urheilumerkit-sivuilla n&auml;kyviss&auml; linkeiss&auml;, jotka l&auml;hetet&auml;&auml;n suoraan k&auml;ytt&auml;jien selaimeen. He saavat automaattisesti IP-osoitteesi, kun t&auml;m&auml; tapahtuu. N&auml;it&auml; tekniikoita k&auml;ytet&auml;&auml;n heid&auml;n mainoskampanjoidensa tehokkuuden mittaamiseen ja/tai vierailemillasi verkkosivustoilla n&auml;kem&auml;si mainossis&auml;ll&ouml;n personointiin.</p>\r\n\r\n<p>Huomaa, ett&auml; urheilumerkit ei p&auml;&auml;se k&auml;ytt&auml;m&auml;&auml;n tai hallitsemaan n&auml;it&auml; kolmannen osapuolen mainostajien k&auml;ytt&auml;mi&auml; ev&auml;steit&auml;.</p>\r\n\r\n<h2>Kolmannen osapuolen tietosuojak&auml;yt&auml;nn&ouml;t</h2>\r\n\r\n<p>urheilumerkitin tietosuojak&auml;yt&auml;nt&ouml; ei koske muita mainostajia tai verkkosivustoja. Siksi suosittelemme tutustumaan n&auml;iden kolmannen osapuolen mainospalvelimien vastaaviin tietosuojak&auml;yt&auml;nt&ouml;ihin saadaksesi lis&auml;tietoja. Se voi sis&auml;lt&auml;&auml; heid&auml;n k&auml;yt&auml;nt&ouml;j&auml;&auml;n ja ohjeita siit&auml;, kuinka tietyt vaihtoehdot poistetaan k&auml;yt&ouml;st&auml;.</p>\r\n\r\n<p>Voit halutessasi poistaa ev&auml;steet k&auml;yt&ouml;st&auml; yksitt&auml;isten selaimesi asetusten kautta. Tarkempia tietoja ev&auml;steiden hallinnasta tietyill&auml; verkkoselaimilla saat selaimien vastaavilta verkkosivustoilta.</p>\r\n\r\n<p>CCPA:n tietosuojaoikeudet (&auml;l&auml; myy henkil&ouml;tietojani)</p>\r\n\r\n<p>CCPA:n mukaan Kalifornian kuluttajilla on muun muassa oikeus:</p>\r\n\r\n<p>Pyyt&auml;&auml; kuluttajan henkil&ouml;tietoja ker&auml;&auml;v&auml;&auml; yrityst&auml; paljastamaan, mitk&auml; luokat ja tietyt henkil&ouml;tiedot, joita yritys on ker&auml;nnyt kuluttajista.</p>\r\n\r\n<p>Pyyd&auml; yrityst&auml; poistamaan kaikki yrityksen ker&auml;&auml;m&auml;t kuluttajaa koskevat henkil&ouml;tiedot.</p>\r\n\r\n<p>Vaadi, ett&auml; kuluttajan henkil&ouml;tietoja myyv&auml; yritys ei myy kuluttajan henkil&ouml;tietoja.</p>\r\n\r\n<p>Jos teet pyynn&ouml;n, meill&auml; on kuukausi aikaa vastata sinulle. Jos haluat k&auml;ytt&auml;&auml; jotakin n&auml;ist&auml; oikeuksista, ota meihin yhteytt&auml;.</p>\r\n\r\n<p>GDPR:n tietosuojaoikeudet</p>\r\n\r\n<p>Haluamme varmistaa, ett&auml; olet t&auml;ysin tietoinen kaikista tietosuojaoikeuksistasi. Jokaisella k&auml;ytt&auml;j&auml;ll&auml; on oikeus seuraavaan:</p>\r\n\r\n<p>Oikeus tutustua &ndash; Sinulla on oikeus pyyt&auml;&auml; kopiot henkil&ouml;tiedoistasi. Saatamme veloittaa sinulta pienen maksun t&auml;st&auml; palvelusta.</p>\r\n\r\n<p>Oikeus oikaisuun &ndash; Sinulla on oikeus pyyt&auml;&auml;, ett&auml; korjaamme kaikki tiedot, jotka uskot olevan virheellisi&auml;. Sinulla on my&ouml;s oikeus pyyt&auml;&auml;, ett&auml; t&auml;ydenn&auml;mme tiedot, jotka uskot olevan puutteellisia.</p>\r\n\r\n<p>Oikeus tietojen poistamiseen &ndash; Sinulla on oikeus pyyt&auml;&auml;, ett&auml; poistamme henkil&ouml;tietosi tietyin edellytyksin.</p>\r\n\r\n<p>Oikeus rajoittaa k&auml;sittely&auml; &ndash; Sinulla on oikeus pyyt&auml;&auml;, ett&auml; rajoitamme henkil&ouml;tietojesi k&auml;sittely&auml; tietyin edellytyksin.</p>\r\n\r\n<p>Oikeus vastustaa k&auml;sittely&auml; &ndash; Sinulla on oikeus vastustaa henkil&ouml;tietojesi k&auml;sittely&auml; tietyin edellytyksin.</p>\r\n\r\n<p>Oikeus tietojen siirrett&auml;vyyteen &ndash; Sinulla on oikeus pyyt&auml;&auml;, ett&auml; siirr&auml;mme ker&auml;&auml;m&auml;mme tiedot toiselle organisaatiolle tai suoraan sinulle tietyin edellytyksin.</p>\r\n\r\n<p>Jos teet pyynn&ouml;n, meill&auml; on kuukausi aikaa vastata sinulle. Jos haluat k&auml;ytt&auml;&auml; jotakin n&auml;ist&auml; oikeuksista, ota meihin yhteytt&auml;.</p>\r\n\r\n<h2>Lasten tiedot</h2>\r\n\r\n<p>Toinen osa prioriteettiamme on lasten suojan lis&auml;&auml;minen Interneti&auml; k&auml;ytett&auml;ess&auml;. Kannustamme vanhempia ja huoltajia tarkkailemaan, osallistumaan ja/tai seuraamaan ja ohjaamaan heid&auml;n verkkotoimintaansa.</p>\r\n\r\n<p>urheilumerkit ei tietoisesti ker&auml;&auml; henkil&ouml;kohtaisia ​​tunnistetietoja alle 13-vuotiailta lapsilta. Jos uskot lapsesi antaneen t&auml;llaisia ​​tietoja verkkosivuillamme, kehotamme sinua ottamaan meihin v&auml;litt&ouml;m&auml;sti yhteytt&auml; ja teemme parhaamme poistaaksemme tiedot viipym&auml;tt&auml; t&auml;llaisia ​​tietoja rekisterist&auml;mme.</p>\r\n', 'Käyttöehdot', '<h2>Tervetuloa urheilumerkit!</h2>\r\n\r\n<p>N&auml;iss&auml; ehdoissa m&auml;&auml;ritell&auml;&auml;n s&auml;&auml;nn&ouml;t ja m&auml;&auml;r&auml;ykset, jotka koskevat urheilumerkit -sivuston, joka sijaitsee osoitteessa urheilumerkit.com, k&auml;ytt&ouml;&auml;.</p>\r\n\r\n<p>Kun avaat t&auml;m&auml;n verkkosivuston, oletamme, ett&auml; hyv&auml;ksyt n&auml;m&auml; ehdot. &Auml;l&auml; jatka urheilumerkit -palvelun k&auml;ytt&ouml;&auml;, jos et hyv&auml;ksy kaikkia t&auml;ll&auml; sivulla mainittuja ehtoja.</p>\r\n\r\n<p>Seuraava terminologia koskee n&auml;it&auml; k&auml;ytt&ouml;ehtoja, tietosuojalausuntoa ja vastuuvapauslauseketta ja kaikkia sopimuksia: &quot;Asiakas&quot;, &quot;Sin&auml;&quot; ja &quot;Sinun&quot; viittaavat sinuun, henkil&ouml;&ouml;n, joka on kirjautunut t&auml;lle verkkosivustolle ja noudattaa Yhti&ouml;n ehtoja. &quot;Yhti&ouml;&quot;, &quot;Me itse&quot;, &quot;Me&quot;, &quot;Meid&auml;n&quot; ja &quot;Me&quot; viittaavat yritykseemme. &quot;Osapuoli&quot;, &quot;Osapuolet&quot; tai &quot;Me&quot; viittaa sek&auml; Asiakkaaseen ett&auml; meihin. Kaikki ehdot viittaavat tarjoukseen, hyv&auml;ksymiseen ja maksun harkitsemiseen, jotka ovat v&auml;ltt&auml;m&auml;tt&ouml;mi&auml;, jotta voimme suorittaa avun prosessin Asiakkaalle soveltuvimmalla tavalla nimenomaiseen tarkoitukseen vastatakseen asiakkaan tarpeisiin, jotka liittyv&auml;t Yhti&ouml;n ilmoittamien palvelujen tarjoamiseen. ja Alankomaiden voimassa olevan lains&auml;&auml;d&auml;nn&ouml;n mukaisesti. Yll&auml; olevan terminologian tai muiden sanojen k&auml;ytt&ouml; yksik&ouml;ss&auml;, monikkomuodossa, isoilla kirjaimilla ja/tai h&auml;n tai he ovat kesken&auml;&auml;n vaihdettavissa ja siten viittaavat samaan.</p>\r\n\r\n<h2>Keksit</h2>\r\n\r\n<p>K&auml;yt&auml;mme ev&auml;steiden k&auml;ytt&ouml;&auml;. K&auml;ytt&auml;m&auml;ll&auml; urheilumerkit -palvelua hyv&auml;ksyt ev&auml;steiden k&auml;yt&ouml;n urheilumerkit -palvelun tietosuojak&auml;yt&auml;nn&ouml;n mukaisesti.</p>\r\n\r\n<p>Useimmat interaktiiviset verkkosivustot k&auml;ytt&auml;v&auml;t ev&auml;steit&auml;, joiden avulla voimme hakea k&auml;ytt&auml;j&auml;n tiedot jokaisesta k&auml;ynnist&auml;. Verkkosivustomme k&auml;ytt&auml;&auml; ev&auml;steit&auml; mahdollistaakseen tiettyjen alueiden toiminnan, mik&auml; helpottaa verkkosivuillamme vierailevien ihmisten k&auml;ynti&auml;. Jotkut tyt&auml;ryhti&ouml;ist&auml;mme/mainoskumppaneistamme voivat my&ouml;s k&auml;ytt&auml;&auml; ev&auml;steit&auml;.</p>\r\n\r\n<h2>Lisenssi</h2>\r\n\r\n<p>Ellei toisin mainita, urheilumerkit ja/tai sen lisenssinantajat omistavat kaiken urheilumerkit-sivuston materiaalin immateriaalioikeudet. Kaikki immateriaalioikeudet pid&auml;tet&auml;&auml;n. Voit k&auml;ytt&auml;&auml; t&auml;t&auml; Urheilumerkit -palvelusta omaan henkil&ouml;kohtaiseen k&auml;ytt&ouml;&ouml;n n&auml;iss&auml; ehdoissa asetettujen rajoitusten mukaisesti.</p>\r\n\r\n<h2>Et saa:</h2>\r\n\r\n<p>Julkaise uudelleen materiaalia urheilumerkit -sivustolta</p>\r\n\r\n<p>Myy, vuokraa tai alilisensi materiaalia urheilumerkit</p>\r\n\r\n<p>J&auml;ljenn&auml;, monista tai kopioi urheilumerkit-aineistoa</p>\r\n\r\n<p>Jakaa sis&auml;lt&ouml;&auml; urheilumerkit -sivustolta</p>\r\n\r\n<p>T&auml;m&auml; sopimus tulee voimaan p&auml;iv&auml;n&auml;, jona se solmitaan. S&auml;&auml;nt&ouml;mme on luotu k&auml;ytt&ouml;ehtomallin avulla.</p>\r\n\r\n<p>T&auml;m&auml;n verkkosivuston osat tarjoavat k&auml;ytt&auml;jille mahdollisuuden l&auml;hett&auml;&auml; ja vaihtaa mielipiteit&auml; ja tietoja tietyill&auml; verkkosivuston alueilla. urheilumerkit ei suodata, muokkaa, julkaise tai tarkista kommentteja ennen niiden esiintymist&auml; verkkosivulla. Kommentit eiv&auml;t&nbsp;heijasta urheilumerkityn, sen edustajien ja/tai tyt&auml;ryhti&ouml;iden n&auml;kemyksi&auml; ja mielipiteit&auml;. Kommentit kuvastavat n&auml;kemyksens&auml; ja mielipiteens&auml; julkaisevan henkil&ouml;n n&auml;kemyksi&auml; ja mielipiteit&auml;. Sovellettavien lakien sallimissa rajoissa urheilumerkit ei ole vastuussa kommenteista tai mist&auml;&auml;n vastuusta, vahingoista tai kuluista, jotka ovat aiheutuneet ja/tai k&auml;rsitty t&auml;m&auml;n Kommenttien k&auml;yt&ouml;st&auml; ja/tai julkaisemisesta ja/tai n&auml;kyvyydest&auml;. verkkosivusto.</p>\r\n\r\n<p>urheilumerkit varaa oikeuden tarkkailla kaikkia kommentteja ja poistaa kaikki kommentit, joita voidaan pit&auml;&auml; sopimattomina, loukkaavina tai jotka rikkovat n&auml;it&auml; ehtoja.</p>\r\n\r\n<h2>Takuut ja vakuutat, ett&auml;:</h2>\r\n\r\n<p>Sinulla on oikeus l&auml;hett&auml;&auml; kommentteja verkkosivustollemme ja sinulla on kaikki tarvittavat lisenssit ja suostumukset tehd&auml;ksesi niin;</p>\r\n\r\n<p>Kommentit eiv&auml;t loukkaa mit&auml;&auml;n immateriaalioikeuksia, mukaan lukien rajoituksetta mink&auml;&auml;n kolmannen osapuolen tekij&auml;noikeus, patentti tai tavaramerkki;</p>\r\n\r\n<p>Kommentit eiv&auml;t sis&auml;ll&auml; kunniaa loukkaavaa, herjaavaa, loukkaavaa, sopimatonta tai muuten laitonta materiaalia, joka loukkaa yksityisyytt&auml;</p>\r\n\r\n<p>Kommentteja ei k&auml;ytet&auml; kaupallisen toiminnan tai laittoman toiminnan houkuttelemiseen tai edist&auml;miseen.</p>\r\n\r\n<p>T&auml;ten my&ouml;nn&auml;t urheilumerkitylle ei-yksinomaisen luvan k&auml;ytt&auml;&auml;, j&auml;ljent&auml;&auml;, muokata ja valtuuttaa muut k&auml;ytt&auml;m&auml;&auml;n, j&auml;ljent&auml;m&auml;&auml;n ja muokkaamaan mit&auml; tahansa kommenttejasi kaikissa muodoissa, muodoissa tai v&auml;lineiss&auml;.</p>\r\n\r\n<h2>Hyperlinkki sis&auml;lt&ouml;&ouml;mme</h2>\r\n\r\n<p>Seuraavat organisaatiot voivat linkitt&auml;&auml; verkkosivustoomme ilman kirjallista lupaa:</p>\r\n\r\n<p>Valtion virastot;</p>\r\n\r\n<p>Hakukoneet;</p>\r\n\r\n<p>Uutisj&auml;rjest&ouml;t;</p>\r\n\r\n<p>Online-hakemistojen jakelijat voivat linkitt&auml;&auml; verkkosivustoomme samalla tavalla kuin ne linkitt&auml;v&auml;t muiden listattujen yritysten verkkosivustoille; ja</p>\r\n\r\n<p>J&auml;rjestelm&auml;n laajuiset akkreditoidut yritykset paitsi voittoa tavoittelemattomien organisaatioiden, hyv&auml;ntekev&auml;isyysj&auml;rjest&ouml;jen ja hyv&auml;ntekev&auml;isyysj&auml;rjest&ouml;jen varainkeruuryhmien pyyt&auml;minen, jotka eiv&auml;t saa hyperlinkke&auml; Web-sivustoomme.</p>\r\n\r\n<p>N&auml;m&auml; organisaatiot voivat linkitt&auml;&auml; kotisivuillemme, julkaisuihin tai muihin verkkosivuston tietoihin, kunhan linkki: (a) ei ole mill&auml;&auml;n tavalla harhaanjohtava; (b) ei aiheettomasti tarkoita linkitt&auml;v&auml;n osapuolen ja sen tuotteiden ja/tai palvelujen sponsorointia, hyv&auml;ksynt&auml;&auml; tai hyv&auml;ksynt&auml;&auml;; ja (c) sopii linkitt&auml;v&auml;n osapuolen sivuston kontekstiin.</p>\r\n\r\n<p>Saatamme harkita ja hyv&auml;ksy&auml; muita linkityspyynt&ouml;j&auml; seuraavan tyyppisilt&auml; organisaatioilta:</p>\r\n\r\n<p>yleisesti tunnetut kuluttaja- ja/tai yritystietol&auml;hteet;</p>\r\n\r\n<p>dot.com-yhteis&ouml;sivustot;</p>\r\n\r\n<p>yhdistykset tai muut hyv&auml;ntekev&auml;isyysj&auml;rjest&ouml;t;</p>\r\n\r\n<p>online-hakemistojen jakelijat;</p>\r\n\r\n<p>Internet-portaalit;</p>\r\n\r\n<p>kirjanpito-, laki- ja konsulttiyritykset; ja</p>\r\n\r\n<h2>oppilaitokset ja ammattij&auml;rjest&ouml;t.</h2>\r\n\r\n<p>Hyv&auml;ksymme linkityspyynn&ouml;t n&auml;ist&auml; organisaatioista, jos p&auml;&auml;t&auml;mme, ett&auml;: (a) linkki ei saa meid&auml;t n&auml;ytt&auml;m&auml;&auml;n ep&auml;suotuisalta itsellemme tai akkreditoiduille yrityksillemme; (b) organisaatiolla ei ole kielteisi&auml; tietoja meill&auml;; (c) meille hyperlinkin n&auml;kyvyydest&auml; saatava hy&ouml;ty kompensoi urheilumerkityn puuttumisen; ja (d) linkki on yleisten resurssitietojen yhteydess&auml;.</p>\r\n\r\n<p>N&auml;m&auml; organisaatiot voivat linkitt&auml;&auml; kotisivuillemme, kunhan linkki: (a) ei ole mill&auml;&auml;n tavalla harhaanjohtava; (b) ei aiheettomasti tarkoita linkitt&auml;v&auml;n osapuolen ja sen tuotteiden tai palveluiden sponsorointia tai hyv&auml;ksynt&auml;&auml;; ja (c) sopii linkitt&auml;v&auml;n osapuolen sivuston kontekstiin.</p>\r\n\r\n<p>Mik&auml;li olet jokin edell&auml; kohdassa 2 luetelluista organisaatioista ja olet kiinnostunut linkitt&auml;m&auml;&auml;n nettisivuillemme, sinun tulee ilmoittaa siit&auml; meille s&auml;hk&ouml;postitse osoitteeseen urheilumerkit. Liit&auml; mukaan nimesi, organisaatiosi nimi, yhteystietosi sek&auml; sivustosi URL-osoite, luettelo URL-osoitteista, joista aiot linkitt&auml;&auml; verkkosivustoomme, sek&auml; luettelo sivustomme URL-osoitteista, joihin haluat linkki. Odota 2-3 viikkoa vastausta.</p>\r\n\r\n<p>Hyv&auml;ksytyt organisaatiot voivat linkitt&auml;&auml; verkkosivustoomme seuraavasti:</p>\r\n\r\n<p>k&auml;ytt&auml;m&auml;ll&auml; yritysnime&auml;mme; tai</p>\r\n\r\n<p>K&auml;ytt&auml;m&auml;ll&auml; yhten&auml;ist&auml; resurssipaikanninta, johon on linkitetty; tai</p>\r\n\r\n<p>K&auml;ytt&auml;m&auml;ll&auml; mit&auml; tahansa muuta kuvausta verkkosivustostamme, johon linkitet&auml;&auml;n, on j&auml;rkev&auml;&auml; linkitt&auml;v&auml;n osapuolen sivuston sis&auml;ll&ouml;n kontekstissa ja muodossa.</p>\r\n\r\n<p>urheilumerkit-logon tai muun taiteen k&auml;ytt&ouml; linkitykseen ei ole sallittua tavaramerkkilisenssisopimuksen puuttuessa.</p>\r\n\r\n<h2>iFrames</h2>\r\n\r\n<p>Ilman ennakkohyv&auml;ksynt&auml;&auml; ja kirjallista lupaa et saa luoda Web-sivujemme ymp&auml;rille kehyksi&auml;, jotka muuttavat mill&auml;&auml;n tavalla verkkosivustomme visuaalista esitystapaa tai ulkoasua.</p>\r\n\r\n<h2>Sis&auml;lt&ouml;vastuu</h2>\r\n\r\n<p>Emme ole vastuussa mist&auml;&auml;n verkkosivustollasi n&auml;kyv&auml;st&auml; sis&auml;ll&ouml;st&auml;. Sitoudut suojelemaan ja puolustamaan meit&auml; kaikkia verkkosivustollasi nousevia vaatimuksia vastaan. Mill&auml;&auml;n verkkosivustolla ei saa n&auml;ky&auml; linkkej&auml;, jotka voidaan tulkita herjaavaksi, s&auml;&auml;dytt&ouml;m&auml;ksi tai rikolliseksi tai jotka loukkaavat tai muutoin loukkaavat tai puoltavat loukkaamista tai muuta loukkaamista kolmannen osapuolen oikeuksissa.</p>\r\n\r\n<h2>Yksityisyytesi</h2>\r\n\r\n<p>Lue tietosuojak&auml;yt&auml;nt&ouml;</p>\r\n\r\n<p>Oikeuksien pid&auml;tys</p>\r\n\r\n<p>Pid&auml;t&auml;mme oikeuden pyyt&auml;&auml; sinua poistamaan kaikki linkit tai tietyt linkit verkkosivustollemme. Suostut poistamaan pyynn&ouml;st&auml; v&auml;litt&ouml;m&auml;sti kaikki linkit verkkosivustollemme. Varaamme my&ouml;s oikeuden muuttaa n&auml;it&auml; ehtoja ja sen linkitysk&auml;yt&auml;nt&ouml;j&auml; milloin tahansa. Kun linkit&auml;t jatkuvasti verkkosivustoomme, sitoudut noudattamaan n&auml;it&auml; linkitysehtoja.</p>\r\n\r\n<h2>Linkkien poistaminen sivuiltamme</h2>\r\n\r\n<p>Jos l&ouml;yd&auml;t verkkosivustoltamme linkin, joka on jostain syyst&auml; loukkaava, voit vapaasti ottaa yhteytt&auml; ja ilmoittaa meille milloin tahansa. Otamme huomioon linkkien poistopyynn&ouml;t, mutta emme ole velvollisia siihen tai vastaamaan sinulle suoraan.</p>\r\n\r\n<p>Emme takaa t&auml;m&auml;n sivuston tietojen oikeellisuutta, emme takaa niiden t&auml;ydellisyytt&auml; tai tarkkuutta; emme my&ouml;sk&auml;&auml;n lupaa varmistaa, ett&auml; verkkosivusto pysyy saatavilla tai ett&auml; verkkosivustolla oleva materiaali pidet&auml;&auml;n ajan tasalla.</p>\r\n\r\n<h2>Vastuuvapauslauseke</h2>\r\n\r\n<p>Sovellettavan lain sallimissa rajoissa suljemme pois kaikki esitykset, takuut ja ehdot, jotka liittyv&auml;t verkkosivustoomme ja t&auml;m&auml;n verkkosivuston k&auml;ytt&ouml;&ouml;n. Mik&auml;&auml;n t&auml;ss&auml; vastuuvapauslausekkeessa ei tarkoita:</p>\r\n\r\n<p>rajoittaa tai sulkea pois meid&auml;n tai sinun vastuusi kuolemasta tai henkil&ouml;vahingosta;</p>\r\n\r\n<p>rajoittaa tai sulkea pois meid&auml;n tai sinun vastuusi petoksesta tai vilpillisest&auml; harhaanjohtamisesta;</p>\r\n\r\n<p>rajoittaa meid&auml;n tai sinun velvollisuuksiasi mill&auml;&auml;n tavalla, joka ei ole sovellettavan lain mukaan sallittua; tai</p>\r\n\r\n<p>sulkea pois mit&auml;&auml;n meid&auml;n tai sinun velvollisuuksistasi, joita ei voida sulkea pois sovellettavan lain mukaan.</p>\r\n\r\n<p>T&auml;ss&auml; osiossa ja muualla t&auml;ss&auml; vastuuvapauslausekkeessa asetetut vastuun rajoitukset ja kiellot: (a) ovat edellisen kappaleen alaisia; ja (b) s&auml;&auml;telev&auml;t kaikkia vastuuvapauslausekkeesta johtuvia vastuita, mukaan lukien sopimuksesta, vahingonkorvausoikeudesta ja lakis&auml;&auml;teisten velvoitteiden rikkomisesta johtuvat vastuut.</p>\r\n\r\n<p>Niin kauan kuin verkkosivusto ja sen tiedot ja palvelut tarjotaan ilmaiseksi, emme ole vastuussa mist&auml;&auml;n menetyksist&auml; tai vahingoista.</p>\r\n', 'uploads/images/89c6e667f846b2b22770ed478427c8af.png', '[{\"url\": \"/privacy-policy\", \"text\": \"Tietosuojakäytäntö\"}, {\"url\": \"/cookies\", \"text\": \"Keksit\"}, {\"url\": \"/terms-of-use\", \"text\": \"Käyttöehdot\"}]', '@ 2022 | urheilumerkit  | All Rights Reserved', NULL, '2022-01-03 13:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_04_12_153329_create_auth_logs_table', 1),
(10, '2021_12_02_054840_create_landing_pages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@dentalcare.com', NULL, '$2y$10$i7ZNA4Zab78vXhgPg.Fw3eQnaTLrMCLVA/aDDWQuyertEvFk5Gp9K', 'etBhi5OSNjS0rs9AFY2TxQOFdVgWEI7Y971x0IbGXrRVStpCFoH51zbSlQPE', NULL, NULL),
(2, 'Ashraful', 'ashraful1910@gmail.com', NULL, '$2y$10$BpxWPFgxnK.cJ5n4mlIofexP5rvoQhZSrrG//krqvExvcx/3iQ.rC', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_logs`
--
ALTER TABLE `auth_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_logs`
--
ALTER TABLE `auth_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
