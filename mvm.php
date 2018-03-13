<?php
function __autoload($class_name) {
	if (file_exists("lib/" . $class_name . '.php')) {
		require_once ("lib/" . $class_name . '.php');
		return;
	}elseif(file_exists("classes/" . $class_name . '.php')){
		require_once ("classes/" . $class_name . '.php');
		return;
	}
}

include("./lib/simple_html_dom.php");	
include("./csv/index.php");

$con = new ConPDO();

$site_id = $con->query('SELECT site_id FROM sites', PDO::FETCH_ASSOC)->fetch()['site_id'];

$product_description = $con->query('SELECT product_description FROM html  WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['product_description'];
$parse_link = $con->query('SELECT parse_link FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['parse_link'];
$xpath_product_link = $con->query('SELECT xpath_product_link FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['xpath_product_link'];
$xpath_product_description = $con->query('SELECT xpath_product_description FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['xpath_product_description'];
$xpath_title = $con->query('SELECT xpath_title FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['xpath_title'];
$xpath_img = $con->query('SELECT xpath_img FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['xpath_img'];
$xpath_main_img = $con->query('SELECT xpath_main_img FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['xpath_main_img'];
$product_category = $con->query('SELECT product_category FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['product_category'];
$product_url_category = $con->query('SELECT product_url_category FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['product_url_category'];
$pure_site_link_chk = $con->query('SELECT pure_site_link_chk FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['pure_site_link_chk'];
$pure_site_link = $con->query('SELECT pure_site_link FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['pure_site_link'];
$xpath_price = $con->query('SELECT xpath_price FROM html WHERE id='.$site_id, PDO::FETCH_ASSOC)->fetch()['xpath_price'];

$k = 0;
$new_img = Array();
$main_arr = Array();

if (!file_exists("tempimage")) {
	mkdir("tempimage", 0777, true);
}

Func::cleanDir("tempimage");

if(file_exists(realpath("data.csv"))){
	unlink(realpath("data.csv"));
}

fopen("data.csv", "a");

$csv = new CSV(realpath("data.csv"));

$csv->setCSV(Array("Категория~URL категории~Товар~Вариант~Описание~Цена~URL~Изображение~Артикул~Количество~Активность~Заголовок [SEO]~Ключевые слова [SEO]~Описание [SEO]~Старая цена~Рекомендуемый~Новый~Сортировка~Вес~Связанные артикулы~Смежные категории~Ссылка на товар~Валюта~Свойства"));

	$html = Func::parseSite($parse_link);
	
	for ($i = 0; $i < $html->getElementById("content")->getElementsByTagName("ul")->item(0)->getElementsByTagName("li")->length; $i++) {
		$main_arr["link"][] = $html->getElementById("content")->getElementsByTagName("ul")->item(0)->getElementsByTagName("li")->item($i)->getElementsByTagName("a")->item(0)->getAttribute("href");	
	}

	for ($i = 0; $i < $html->getElementById("content")->getElementsByTagName("ul")->item(0)->getElementsByTagName("li")->length; $i++) {
		$main_arr["title"][] = strip_tags(preg_replace( "/\r|\n/", "", mb_convert_encoding($html->getElementById("content")->getElementsByTagName("ul")->item(0)->getElementsByTagName("li")->item($i)->getElementsByTagName("div")->item(2)->getElementsByTagName("div")->item(0)->getElementsByTagName("h3")->item(0)->nodeValue, 'windows-1251', 'UTF-8')));
	}
	
	for ($i = 0; $i < $html->getElementById("content")->getElementsByTagName("ul")->item(0)->getElementsByTagName("li")->length; $i++) {
		$int = $html->getElementById("content")->getElementsByTagName("ul")->item(0)->getElementsByTagName("li")->item($i)->getElementsByTagName("div")->item(2)->getElementsByTagName("div")->item(0)->getElementsByTagName("div")->item(0)->getElementsByTagName("span")->item(1)->textContent;
		settype($int, "integer");
		$main_arr["price"][] = $int;
	}
	
	foreach($main_arr["link"] as $ln){
		$ht = Func::parseSite( $ln );
		$xpath = new DOMXpath($ht);
		
		if(empty($product_description)){
			$d = Func::innerHTML($xpath->query('//*[@id="content"]/div/div[3]/div[1]/div')->item(0));
		
			if (empty($d)) {
				$d = Func::innerHTML($xpath->query('//*[@id="content"]/div/div[3]/div[1]')->item(0));
			}
			
			$main_arr["xpath_product_description"][] = preg_replace( "/\r|\n/", "", mb_convert_encoding($d, 'windows-1251', 'UTF-8'));
		}else{
			$main_arr["xpath_product_description"][] = $product_description;
		}
				
		$s = $xpath->query('//*[@id="content"]/div/div[2]/div/div[3]')->item(0)->nodeValue;
		
		if (empty($s)) {
			$s = $xpath->query('//*[@id="content"]/div/div[2]/div/div[4]')->item(0)->nodeValue;
		}
		
		$main_arr["product_property"][] = preg_replace( Array("/\r|\n/","/: /","/;/"), Array("","=","&"), mb_convert_encoding($s, 'windows-1251', 'UTF-8'));
		
		for ($i = 0; $i < $xpath->query('//*[@id="content"]/div/div[1]/div/figure/div')->length; $i++) {
			if(empty($xpath->query('//*[@id="content"]/div/div[1]/div/figure')->item(0)->getElementsByTagName("div")->item($i)->getElementsByTagName("a")->item(0)->getAttribute("href"))) continue;
			
			preg_match("/[a-zA-z\-0-9() ]+.[a-zA-z\-0-9]+$/",$xpath->query('//*[@id="content"]/div/div[1]/div/figure')->item(0)->getElementsByTagName("div")->item($i)->getElementsByTagName("a")->item(0)->getAttribute("href"),$new_img);
			
			if (copy($xpath->query('//*[@id="content"]/div/div[1]/div/figure')->item(0)->getElementsByTagName("div")->item($i)->getElementsByTagName("a")->item(0)->getAttribute("href"),"tempimage/".$new_img[0])) {//$new_img[0]
				$main_arr["img"][$k][] = $new_img[0];	
			}
		}
		
		$category = mb_convert_encoding($product_category, 'windows-1251', 'UTF-8'); //Категория товара "Компьютерная техника/Компьютеры и ноутбуки/Ноутбуки"
		$url_category = $product_url_category; //URL категории
		$goods = $main_arr["title"][$k]; //Товар "Ноутбук Dell Inspiron N411Z"
		$options = ""; //Вариант "без чехла"
		$description = $main_arr["xpath_product_description"][$k];//str_replace('{$goods}',$goods,mb_convert_encoding(mysql_result($product_description,0), 'windows-1251', 'UTF-8'))
		$price = $main_arr["price"][$k]; //Цена "19000"
		$url = ""; //URL "noutbuk-dell-inspiron-n411z"
		$img = ""; //Изображение "noutbuk-Dell-Inspiron-N411Z.png[:param:][alt=ноутбук dell][title=ноутбук dell]|noutbuk-Dell-Inspiron-N411Z-oneside.png[:param:][alt=Ноутбук"

		if(is_array($main_arr["img"][$k])){
			foreach($main_arr["img"][$k] as $im){
			$img .= $im."[:param:][alt=$goods][title=$goods]|";
			}
			$img = substr($img, 0, -1);
		} else {
			$img .= $main_arr["img"][$k]."[:param:][alt=$goods][title=$goods]";
		}
		
		$articul = ""; //Артикул "1000A"
		$count = "-1"; //Количество "-1 нет на складе"
		$activity = "1"; //Активность 1 включон 0 выключен
		$title_seo = ""; //Заголовок [SEO]
		$kay_words = ""; //Ключевые слова [SEO]
		$description_seo = ""; //Описание [SEO]
		$old_price = ""; //Старая цена
		$reccomend = "0"; //Рекомендуемый
		$new = "0"; //Новый
		$sort = ""; //Сортировка
		$weight = "15,6"; //Вес "2,27"
		$bind_articul = ""; //Связанные артикулы
		$neibor_category = ""; //Смежные категории
		$link_goods = ""; //Ссылка на товар
		$currency = "UAH"; //Валюта
		$propertis = $main_arr["product_property"][$k];
		
		$csv->setCSV(array("$category~$url_category~$goods~$options~$description~$price~$url~$img~$articul~$count~$activity~$title_seo~$kay_words~$description_seo~$old_price~$reccomend~$new~$sort~$weight~$bind_articul~$neibor_category~$link_goods~$currency~$propertis"));
	
		$k++;
	}
	
		Func::printData($main_arr);
?>