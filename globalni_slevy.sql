SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

INSERT INTO `slevy` (`id`, `users_id`, `plakaty`, `vizitky`, `brozury`, `kalendare`, `velkoplosny`, `textil`) VALUES
(1,	1,	0,	0,	0,	0,	0,	0),
(2,	2,	5,	5,	5,	5,	5,	5);

INSERT INTO `texts` (`id`, `nazev`, `obsah`, `poznamka`) VALUES
(1,	'banner - košík - jednorázový nákup',	'<p><strong>Registrujte&nbsp;se</strong> na&nbsp;str&aacute;nk&aacute;ch Forte&nbsp;tisk a z&iacute;skejte na&nbsp;v&scaron;echny n&aacute;kupy <strong>5%&nbsp;SLEVU</strong>. Pro z&iacute;sk&aacute;n&iacute; slevy je nutno <a href=\"#\">kliknout zde</a>&nbsp;a registrovat se.</p>',	'Jakýkoliv odkaz zde přesměruje na registraci. Jako \"neutrální\" odkaz jde použít znak #.'),
(2,	'banner - košík - registrace',	'<p><strong>Registrujte&nbsp;se</strong> na&nbsp;str&aacute;nk&aacute;ch Forte&nbsp;tisk a z&iacute;skejte na&nbsp;v&scaron;echny n&aacute;kupy <strong>5%&nbsp;SLEVU</strong>.</p>',	''),
(3,	'banner - před FAQ',	'<p><strong>90% zak&aacute;zek expedujeme n&aacute;sleduj&iacute;c&iacute; pracovn&iacute; den</strong> <br />po objedn&aacute;n&iacute;.</p>',	''),
(4,	'banner - košík - dodací údaje',	'<p><strong>Registrujte&nbsp;se</strong> a z&iacute;skejte ihned <strong>slevu 5%</strong> na V&aacute;&scaron; n&aacute;kup.</p>',	''),
(5,	'FAQ - otázka 1',	'Rychlost zpracov&aacute;n&iacute; zak&aacute;zky&nbsp;',	''),
(6,	'FAQ - odpověď 1',	'Každ&yacute; z&aacute;kazn&iacute;k, kter&yacute; provede registraci na na&scaron;em port&aacute;le, obdrž&iacute; ihned SLEVU ve v&yacute;&scaron;i 5% na v&scaron;echny realizovan&eacute; objedn&aacute;vky. Zv&yacute;hodněn&iacute; nen&iacute; časově omezen&eacute; a plat&iacute; na v&scaron;echny n&aacute;kupy a kategorie, kter&eacute; Forte tisk nab&iacute;z&iacute;. Registraci můžete prov&eacute;st přes homepage kliknut&iacute;m na přihl&aacute;sit se v prav&eacute;m horn&iacute;m rohu, nebo ve 2. kroku n&aacute;kupn&iacute;ho ko&scaron;&iacute;ku.',	''),
(7,	'FAQ - otázka 2',	'Jak&yacute; je rozd&iacute;l mezi objedn&aacute;vkou bez registrace a objedn&aacute;vkou s registrac&iacute;?',	''),
(8,	'FAQ - odpověď 2',	'<p>90% všech objednávek expedujeme do následujícího dne. Každý produkt však vyžaduje jiné technologické zpracování a časovou náročnost, proto u zbylých 10% objednávek nemůžeme garantovat expedici do následujícího dne.</p>\r\n<p>O přesném termínu dodání zakázky Vás budeme informovat v emailu, který obdržíte po dokončení objednávky.</p>',	''),
(9,	'FAQ - otázka 3',	'Doprava a platba',	''),
(10,	'FAQ - odpověď 3',	'Objednané zboží lze vyzvednout osobně v sídle společnosti v Ostravě, nebo nechat zaslat v rámci celé ČR prostřednictvím PPL a České pošty. Cena zásilky je v obou případech pevně stanovena na 120 Kč. V případě zakázky nad 5.000 Kč je doprava ZDARMA.\r\n<h4><strong>Způsob úhrady objednávky:</strong></h4>\r\nNa výběr máte ze tří variant:      \r\n  <ol>\r\n    <li>platba na dobírku</li>\r\n    <li>platba osobně při vyzvednutí</li>\r\n    <li>platba převodem</li>\r\n  </ol>',	''),
(11,	'FAQ - otázka 4',	'V jakém formátu mohu posílat data?',	''),
(12,	'FAQ - odpověď 4',	'Ideální jsou pro nás korektní tiskové podklady v pdf včetně přesahů a ořezovek, vše ve CMYKu, ale poradíme si i s většinou běžně používaných formátů (jpg, tif, psd, ai, cdr, doc, docx, ppt, png, ...).\r\n<br><br>\r\nPokud si nejste jisti, jak podklady nejlépe připravit, neváhejte nás kontaktovat. V případě, že se na tiskový arch vejde více kusů tiskoviny, není potřeba provádět archovou montáž, stačí nám zaslat jen jeden kus.',	''),
(13,	'FAQ - otázka 5',	'Jak zaslat / vložit tisková data?',	''),
(14,	'FAQ - odpověď 5',	'Tisková data můžete zaslat/vložit třemi způsoby:\r\n<ol>\r\n  <li>Nahráním v samotném procesu nákupu ve 4. kroku nákupního košíku. Tuto variantu doporučujeme pro soubory o maximální velikosti do 20 MB.</li>\r\n  <li>Vložení odkazu stránek (ulozto.cz, rajce.net atd...), na kterých jsou tisková data nahrána, ve 4. kroku nákupního košíku. Tuto variantu doporučujeme u souborů, které mají více než 20 MB.</li>\r\n  <li>Zasláním na email: <a href=\"mailto:objednavka@fortetisk.cz\">objednavka@fortetisk.cz</a>.</li>\r\n</ol>',	''),
(15,	'FAQ - otázka 6',	'Výhody Forte tisku oproti standardní tiskárně',	''),
(16,	'FAQ - odpověď 6',	'<ul>\n<li>Objedn&aacute;vky v jakoukoliv denn&iacute; nebo nočn&iacute; hodinu 7 dn&iacute; v t&yacute;dnu.</li>\n<li>&Uacute;spora času, v&scaron;e vyř&iacute;d&iacute;te z pohodl&iacute; domova, nebo kancel&aacute;ře.</li>\n<li>Doprava zbož&iacute; na v&aacute;mi zvolenou adresu.</li>\n<li>Rychlost zpracov&aacute;n&iacute; tiskoviny, 90% zak&aacute;zek expedujeme do n&aacute;sleduj&iacute;c&iacute;ho dne.</li>\n<li>Přehledn&aacute; cenov&aacute; kalkulace.</li>\n<li>Jednoduch&eacute; zad&aacute;v&aacute;n&iacute; objedn&aacute;vky.</li>\n</ul>',	''),
(17,	'Nabídka tisku - Plakáty, letáky',	'Využíváme různé technologie tak, aby kvalita a cena byly co nejoptimálnější. Nízké náklady tiskneme na profesionálním digitálním produkčním systému Xerox s rozlišením 2400 dpi a maximálním formátem archu 488x330 mm. Jsme schopni tisknout až 900 archů/hod. Vaši zakázku standardně odesíláme již druhý den po zadání objednávky (po domluvě i tentýž den). Vyšší náklady tiskneme cenově výhodnou ofsetovou technologií, je však potřeba počítat s tím, že doba expedice může být až 5 pracovních dnů.',	''),
(18,	'Nabídka tisku - Vizitky',	'<p>Plnobarevn&eacute; vizitky v klasick&eacute;m i EURO form&aacute;tu. Možno dodat jak vlastn&iacute; n&aacute;vrh anebo si nechat na m&iacute;ru vytvořit origin&aacute;ln&iacute; a osobit&yacute; design. Proveden&iacute; buď na klasick&eacute;m matn&eacute;m kř&iacute;dov&eacute;m pap&iacute;ře anebo nadstandardn&iacute; verze na grafick&yacute;ch pap&iacute;rech.</p>',	''),
(19,	'Nabídka tisku - Brožury, knihy',	'Chcete vydat vlastní knihu? Rádi Vám ji graficky zpracujeme, vytvoříme poutavou obálku či doplníme o profesionální ilustrace a fotografie. Jsme schopni vytisknout Vaše dokumenty již od jednoho kusu! Dodací lhůty se pohybují od 1-7 dnů v závislosti na množství a typu zpracování.',	''),
(20,	'Nabídka tisku - Kalendáře',	'<p>Chtěli byste m&iacute;t origin&aacute;ln&iacute; kalend&aacute;ř? Stač&iacute; dodat jen fotografie a o v&scaron;e ostatn&iacute; se postar&aacute;me. Kromě standardn&iacute;ch kalend&aacute;řů (stoln&iacute;, n&aacute;stěnn&eacute;) jsme schopni vytvořit i netypick&eacute; kalend&aacute;ře na m&iacute;ru (speci&aacute;ln&iacute; form&aacute;ty, design, kalend&aacute;ria apod.)</p>',	''),
(21,	'Nabídka tisku - Velkoplošný tisk',	'<p>Vhodn&yacute; pro tisk form&aacute;tů vět&scaron;&iacute;ch než A3 anebo PVC&nbsp;samolepek s n&aacute;sledn&yacute;m ořezem. Na&scaron;im standardem je kvalitn&iacute; tisk bez pruhov&aacute;n&iacute; vhodn&yacute; jak pro interi&eacute;r (obrazy na pl&aacute;tno, fotoplak&aacute;ty,...), tak pro exteri&eacute;r (banery, PVC samolepky, polepy prodejen a automobilů...) s garanc&iacute; st&aacute;losti barev min. 2 roky. Dodac&iacute; lhůty jsou 1-3 dny.</p>',	''),
(22,	'Nabídka tisku - Textil',	'Nabízíme široké spektrum textilu a jeho následný potisk sítotiskovou technologií, která nabízí vynikající kvalitu a stálost barev i po četném praní. Dodací lhůty jsou 3-14 dní v závislosti na množství a vytíženosti oddělení. <strong>Tato kategorie je v přípravě. Pro kalkulaci nás prosím kontaktujte na <a href=\"mailto:objednavka@fortetisk.cz\">objednavka@fortetisk.cz</a>.</strong>',	'Pozor na e-mail. Aby to fungovalo, musí být odkaz ve tvaru: mailto:objednavka@fortetisk.cz');

INSERT INTO `users` (`id`, `email`, `password`, `role`, `osoba`, `jmeno`, `prijmeni`, `ico`, `nazev`, `mobil`, `adresa_fakturacni`, `adresa_dorucovaci`, `newsletter`, `last_login`, `active`) VALUES
(1,	'GLOBÁLNÍ SLEVA',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL,	'0000-00-00',	0),
(2,	'a@a.cz',	'$2y$10$Qr792AMjBkG1n1tLTbodfuIad37.yC9VH5HSxAKsBRgaXkupfL7nC',	'zakaznik',	'spotrebitel',	'a',	'b',	'',	'',	'123',	'abcdefg 123\nhijkl\n789 09',	'abcdefg 123\nhijkl\n789 09',	1,	'2014-11-24',	1);