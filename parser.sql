-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 13 2018 г., 23:03
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `parser`
--

-- --------------------------------------------------------

--
-- Структура таблицы `html`
--

CREATE TABLE `html` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `pure_site_link` varchar(255) NOT NULL,
  `pure_site_link_chk` tinyint(1) NOT NULL DEFAULT '0',
  `product_description` text NOT NULL,
  `xpath_img` varchar(255) NOT NULL,
  `xpath_main_img` varchar(255) NOT NULL,
  `xpath_title` varchar(255) NOT NULL,
  `xpath_price` varchar(255) NOT NULL,
  `parse_link` varchar(255) NOT NULL,
  `xpath_product_link` varchar(255) NOT NULL,
  `xpath_product_description` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_url_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `html`
--

INSERT INTO `html` (`id`, `site_name`, `pure_site_link`, `pure_site_link_chk`, `product_description`, `xpath_img`, `xpath_main_img`, `xpath_title`, `xpath_price`, `parse_link`, `xpath_product_link`, `xpath_product_description`, `product_category`, `product_url_category`) VALUES
(1, 'MBM', 'http://mvm.ua', 1, '<h3><strong>Дверная ручка на розетке MVM {$goods}</strong></h3><p> </p><p>    Ручка – самый значимый аксессуар, который может внести новый штрих в общий вид. При выборе ручки, следует помнить, что ее цвет должен сочетаться с цветом фурнитуры мебельных гарнитуров жилища, а дизайн ручки с дизайном двери. Руководствоваться так же можно и тактильными ощущениями – буквально потрогать все предлагаемые вам ручки.</p><p>    Фурнитура <em>MVM {$goods}</em> изготовлена из высококачественного цинкового сплава и алюминия, основными характеристиками которых есть стойкость к коррозии, высокая прочность при температурных колебаниях, нетоксичность (используется в пищевой промышленности).</p><p>    Ручки могут устанавливаться на входные/межкомнатные двери, подходят для общественного использования с повышенными гигиеническими требованиями.</p><p><strong>Комплектация:</strong></p><ol><li>Ручки дверные - 1 пара</li><li>Квадрат соединительный 8х100мм - 1 шт</li><li>Комплект для крепления с шестигранным ключом - 1 шт</li></ol><p><strong>Дополнительные рекомендации:</strong></p><ol><li>Не чистить изделия абразивными средствами, в случае необходимости протирать сухой мягкой салфеткой.</li><li>К монтажу хранить в оригинальной упаковке производителя.</li><li>Для создания единого стиля рекомендуем комплектовать ручки фурнитурой от компании МВМ.</li></ol>', 'div#galleria-content div.item-list ul.gallery>li>img', 'null', 'div.views-field-title span.field-content>a', 'null', 'http://mvm.ua/ru/taxonomy/term/5%2087%2058%2059%2066?page=2', 'div.views-field-title span.field-content>a', 'null', 'Дверная фурнитура/MBM/Накладки', 'door-furniture/mbm/nakladki'),
(3, 'Mega Bit', 'https://reg.megabitcomp.ru', 1, '<table class=\"js-tabHeight tableDetails \" itemprop=\"description\"><tbody><tr><td>Тип</td><td>телефон</td></tr><tr><td>Тип корпуса</td><td>классический</td></tr><tr><td>Материал корпуса</td><td>пластик</td></tr><tr><td>Количество SIM-карт</td><td>2</td></tr><tr><td>Режим работы нескольких SIM-карт</td><td>попеременный</td></tr><tr><td>Вес</td><td>65 г</td></tr><tr><td>Размеры (ШxВxТ)</td><td>45x107x14 мм</td></tr><tr><td>Тип экрана</td><td>цветной TFT</td></tr><tr><td>Диагональ</td><td>1.77 дюйм.</td></tr><tr><td>Размер изображения</td><td>160x128</td></tr><tr><td>Число пикселей на дюйм (PPI)</td><td>116</td></tr><tr><td>Тип мелодий</td><td>полифонические</td></tr><tr><td>Тыловая фотокамера</td><td>нет</td></tr><tr><td>Аудио</td><td>FM-радио</td></tr><tr><td>Стандарт</td><td>GSM 900/1800</td></tr><tr><td>Доступ в интернет</td><td>нет</td></tr><tr><td>Интерфейсы</td><td>Bluetooth 2.1</td></tr><tr><td>Объем встроенной памяти</td><td>32 Мб</td></tr><tr><td>Слот для карт памяти</td><td>есть, объемом до 8 Гб</td></tr><tr><td>Тип аккумулятора</td><td>Li-Ion</td></tr><tr><td>Емкость аккумулятора</td><td>600 мА⋅ч</td></tr><tr><td>Тип разъема для зарядки</td><td>micro-USB</td></tr><tr><td>Органайзер</td><td>будильник</td></tr></tbody></table>', 'ul#lightSliderTumb li.thumbnail img', 'div.mainInfo div.fotorama_new div.fotorama_new__container div.fotorama_new__item a.mainPic img', 'div.nd__masView div.nd__masView--item div.nd__masView--item--contain div.nd__masView--about a.nd__masView--name', 'div.nd__masView div.nd__masView--item div.nd__masView--item--contain div.nd__masView--priceWrap div.nd__mainPrice', 'https://reg.megabitcomp.ru/catalog/mobilnye_telefony/?page=2', 'div.nd__masView div.nd__masView--item div.nd__masView--item--contain a.nd__masView--pic', 'div.newDes__tabContainer div.wts div.newDes__tabMinHeight table', 'Мобильные телефоны, смартфоны', 'mobilnye_telefony/267558/'),
(12, 'UKRGO', 'http://kiev.ukrgo.com', 0, '', 'td a img.image_galary', 'td span a.link_post img', 'td h3 a.link_post b', 'null', 'http://kiev.ukrgo.com/view_subsection.php?id_subsection=146', 'td h3 a.link_post', 'body > table:nth-child(7) > tbody > tr > td:nth-child(1) > table > tbody > tr:nth-child(3)', '', ''),
(14, 'Маркет Двери', 'http://market-dveri.ua', 0, '<div id=\"more_info_sheets\" class=\"sheets align_justify\">\r\n\r\n<div id=\"idTab1\" class=\"rte\">\r\n<h1>Все цвета под заказ!</h1>\r\n<div title=\"Двери фабрики Korfad\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Tpx3YbUPyg8\" width=\"560\" data-dm-button-id=\"download-master-button-343299694\"></iframe>&nbsp;&nbsp;<div class=\"download-master-mm-button\" title=\" Скачати відео PR-09 (Korfad) - 1 999 грн, Market-Dveri Киев\" id=\"download-master-button-343299694\" style=\"visibility: visible; top: 0px; left: 0px;\"><div class=\"download-master-button-content\"><img src=\"chrome-extension://dljdacfojgikogldjffnkdcielnklkce/ui/assets/img/download-mm.png\"><span> Скачати відео</span><img class=\"download-master-settings\" src=\"chrome-extension://dljdacfojgikogldjffnkdcielnklkce/ui/assets/img/download-mm-settings.png\"><img class=\"download-master-close\" src=\"chrome-extension://dljdacfojgikogldjffnkdcielnklkce/ui/assets/img/download-mm-close.png\"></div></div></div>\r\n<div title=\"Обзор фабрики дверей Корфад\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/OSQjokAB44g\" width=\"560\" data-dm-button-id=\"download-master-button-26170282\"></iframe><div class=\"download-master-mm-button\" title=\" Скачати відео PR-09 (Korfad) - 1 999 грн, Market-Dveri Киев\" id=\"download-master-button-26170282\" style=\"visibility: visible; top: 0px; left: 0px;\"><div class=\"download-master-button-content\"><img src=\"chrome-extension://dljdacfojgikogldjffnkdcielnklkce/ui/assets/img/download-mm.png\"><span> Скачати відео</span><img class=\"download-master-settings\" src=\"chrome-extension://dljdacfojgikogldjffnkdcielnklkce/ui/assets/img/download-mm-settings.png\"><img class=\"download-master-close\" src=\"chrome-extension://dljdacfojgikogldjffnkdcielnklkce/ui/assets/img/download-mm-close.png\"></div></div></div>\r\n<p>Межкомнатные двери Korfad изготавливаются в г.Корюковка Черниговская обл.</p>\r\n<p>Двери покрыты высокопрочной ламинацией, которая придаёт дверям красивый внешний вид и защищает их от влаги и механических повреждений. Плёнка имеет на данный момент 4 вариант декора.</p>\r\n<p>Изготавливается продукция Korfad по типу конструктора, все детали двери собираются в единое полотно при помощи специальных болтов и заглушек, в результате получается готовый продукт.</p>\r\n<p><a href=\"/upload/images/Opisanie_tovarov/korfad/korfad_1.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/korfad_1.jpg\" style=\"width: 400px; height: 274px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/korfad_2.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/korfad_2.jpg\" style=\"width: 400px; height: 281px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_10.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_10.jpg\" style=\"width: 400px; height: 300px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_11.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_11.jpg\" style=\"width: 400px; height: 302px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_7.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_7.jpg\" style=\"width: 400px; height: 225px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_8.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_8.jpg\" style=\"width: 400px; height: 303px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_9.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_9.jpg\" style=\"width: 400px; height: 301px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_katalog_1.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_katalog_1.jpg\" style=\"width: 200px; height: 283px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_katalog_2.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_katalog_2.jpg\" style=\"width: 200px; height: 283px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_katalog_2.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_katalog_3.jpg\" style=\"width: 200px; height: 283px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_katalog_4.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_katalog_4.jpg\" style=\"width: 200px; height: 283px;\"></a></p>\r\n<p style=\"line-height: 20.8px;\"><a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_12.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_12.jpg\" style=\"width: 300px; height: 262px;\"></a></p>\r\n<p style=\"line-height: 20.8px;\"><a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_5.JPG\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_5.JPG\" style=\"width: 300px; height: 241px;\"></a></p>\r\n<p style=\"line-height: 20.8px;\"><a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_6.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_6.jpg\" style=\"width: 300px; height: 385px;\"></a></p>\r\n<p style=\"line-height: 20.8px;\"><a href=\"/upload/images/Opisanie_tovarov/korfad/korfad_veer1.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/korfad_veer1.jpg\" style=\"width: 400px; height: 225px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/korfad_veer2.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/korfad_veer2.jpg\" style=\"width: 400px; height: 225px;\"></a></p>\r\n<p style=\"line-height: 20.8px;\"><a href=\"/upload/images/Opisanie_tovarov/korfad/pogonaj_korfad.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/pogonaj_korfad.jpg\" style=\"width: 400px; height: 260px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/pogonaj_korfad1.jpg\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/pogonaj_korfad1.jpg\" style=\"width: 428px; height: 347px;\"></a></p>\r\n</div>\r\n<div id=\"idTab3\" class=\"rte block_hidden_only_for_screen\"><p><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_13.jpg\" style=\"width: 694px; height: 165px;\"></p>\r\n<p><a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_12.jpg\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_12.jpg\" style=\"width: 700px; height: 611px;\"></a></p>\r\n<p><a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_5.JPG\" rel=\"gallery\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_5.JPG\" style=\"width: 700px; height: 561px;\"></a></p>\r\n<p><a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_6.jpg\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_6.jpg\" style=\"width: 700px; height: 898px;\"></a></p>\r\n<p><a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_3.jpg\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_3.jpg\" style=\"width: 500px; height: 353px;\"></a>&nbsp;<a href=\"/upload/images/Opisanie_tovarov/korfad/Korfad_4.jpg\"><img alt=\"\" src=\"/upload/images/Opisanie_tovarov/korfad/Korfad_4.jpg\" style=\"width: 500px; height: 353px;\"></a></p>\r\n</div> \r\n<ul id=\"idTab2\" class=\"bullet block_hidden_only_for_screen\">\r\n<div class=\"attrs\"><div class=\"awp_title\">Изменение размеров:</div><div class=\"awp_content\"> нет</div></div>\r\n<div class=\"attrs\"><div class=\"awp_title\">Назначение:</div><div class=\"awp_content\"> Кухня, Комната, Туалет, Кладовка, Раздвижная, Ванная</div></div>\r\n<div class=\"attrs\"><div class=\"awp_title\">Наполнение:</div><div class=\"awp_content\"> Массив</div></div>\r\n<div class=\"attrs\"><div class=\"awp_title\">Популярные фильтры:</div><div class=\"awp_content\"> Всегда в наличии</div></div>\r\n<div class=\"attrs\"><div class=\"awp_title\">Стекло:</div><div class=\"awp_content\"> С маленьким стеклом, С большим стеклом</div></div>\r\n<div class=\"attrs\"><div class=\"awp_title\">Стиль:</div><div class=\"awp_content\"> Хай-тек, Модерн</div></div>\r\n<div class=\"attrs\"><div class=\"awp_title\">Тип:</div><div class=\"awp_content\"> Раздвижные, Распашные, Одинарные</div></div>\r\n</ul>\r\n\r\n</div>', 'ul#thumbs_list_frame li a', 'span#view_full_size img', 'ul#product_list li div.prName a', 'ul#product_list li div.clearfix div.product_price span.price ', 'http://market-dveri.ua/ru/porto-k812/', 'ul#product_list li div.product_image_div a.product_image', 'null', '', ''),
(15, 'Nika Doors', 'http://www.nikadoors.com.ua', 1, 'fthfhfhfgh', 'null', 'span#list_product_image_middle a img.jshop_thumbnail', 'div.list_product div.product-footer h3.name a', 'div.list_product div.product-footer div.jshop_price span', 'https://www.nikadoors.com.ua/kupyty-mizhkimnatni-dveri/mizhkimnatni-dveri-korfad/', 'div.list_product div.item_inner li.image div.image_block a', 'null', '', ''),
(16, 'KEDR', 'http://kedr-locks.com', 1, 'Description', 'null', 'div#content div.product-info div.left div.image a img', 'div.product-grid div div.name a', 'div.product-grid div div.price', 'http://kedr-locks.com/index.php?route=common/home', 'div.product-grid div div.name a', 'null', 'Фурнитура/Кедр', 'door-furniture/kedr'),
(17, ' PROM', 'https://prom.ua', 0, 'Description', 'null', 'img.js-product-images__main_image', 'a.x-gallery-tile__name span', 'div.x-gallery-tile__price span', 'http://kedr-locks.com', 'div.x-gallery-tile__content a.x-gallery-tile__img', 'div.x-product-page__details div.x-product-page__section div.x-product-attr', '', ''),
(18, 'HomeWest', 'http://www.homwest.com', 0, '', 'div.avada-product-gallery-thumbs-wrapper ol li img', 'figure.woocommerce-product-gallery__wrapper div.woocommerce-product-gallery__image img', 'section#content ul.product div.product-details h3 a', 'section#content ul.product div.fusion-price-rating span.price span.woocommerce-Price-amount', 'https://www.homwest.com/product-category/laminat/', 'section#content ul.products>li.product-grid-view>a.product-images', 'div.post-content.woocommerce-product-details__short-description>p', 'Ламинат/LOFOR', 'laminate/lofor');

-- --------------------------------------------------------

--
-- Структура таблицы `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `site_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sites`
--

INSERT INTO `sites` (`id`, `site_id`) VALUES
(1, 18);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `html`
--
ALTER TABLE `html`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `html`
--
ALTER TABLE `html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
