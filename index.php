<?php
/*
 _____ ______   _______   ________  ________          _____ ______   _______   ________   ___  ___     
|\   _ \  _   \|\  ___ \ |\   ____\|\   __  \        |\   _ \  _   \|\  ___ \ |\   ___  \|\  \|\  \    
\ \  \\\__\ \  \ \   __/|\ \  \___|\ \  \|\  \       \ \  \\\__\ \  \ \   __/|\ \  \\ \  \ \  \\\  \   
 \ \  \\|__| \  \ \  \_|/_\ \  \  __\ \   __  \       \ \  \\|__| \  \ \  \_|/_\ \  \\ \  \ \  \\\  \  
  \ \  \    \ \  \ \  \_|\ \ \  \|\  \ \  \ \  \       \ \  \    \ \  \ \  \_|\ \ \  \\ \  \ \  \\\  \ 
   \ \__\    \ \__\ \_______\ \_______\ \__\ \__\       \ \__\    \ \__\ \_______\ \__\\ \__\ \_______\
    \|__|     \|__|\|_______|\|_______|\|__|\|__|        \|__|     \|__|\|_______|\|__| \|__|\|_______|
    
    Author: James Schulze
    Email: schulze.james@protonmail.com
    License: MIT
*/
@session_start();
include('./www-cgi/database.php');
include('./www-cgi/forms.php');
include('./www-cgi/dbq.php');
//include('./www-cgi/curl.php');
if(!isset($_SESSION['seclvl'])) {
	$_SESSION['seclvl'] = 0;
}
if(!isset($_SESSION['tpl'])) {
	$_SESSION['tpl'] = rand(1,5);
}
if(!isset($_SESSION['adFeed'])) {
	$_SESSION['adFeed'] = '0';
}
if(!isset($_SESSION['ciri'])) {
	$_SESSION['ciri'] = '<img src="./www-img/vipNotSiri.jpg" width="45" height="45" style="padding: 0px 2px 0px 0px;float: left;">@Ciri Says::&nbsp;';
}
if(!isset($_SESSION['zero'])) {
    $_SESSION['zero'] = '<img src="./www-img/driver1.png" width="95" height="45" style="padding: 0px 2px 0px 0px;float: left;">@DriveZero Says::&nbsp;';
}
$force_ssl = 0;
if($force_ssl == 1) {
	if(!isset($_SERVER["HTTPS"]) || $_SERVER["HTTPS"] != "on") {
	    header("Location: https://" . $_SERVER["HTTP_HOST"] . $_SERVER["REQUEST_URI"], true, 301);
	    exit;
	}
}
if(isset($_REQUEST['logout']) && $_REQUEST['logout'] == '1') {
	session_destroy();
	echo('<meta http-equiv="refresh" content="0;'."$_SERVER[PHP_SELF]".'">');
}
$imglnk = array();
$scan = scandir('./www-img');
foreach($scan as $var => $val) {
	if(preg_match('/^WallpaperHD/',$val)) {
		$imglnk[$var] = './www-img/'.$val;
	}
}
$imgrnd = array_rand($imglnk,5);
switch($_SESSION['tpl']) {
	case '1':
		$tpl = $imglnk[$imgrnd['0']];
	break;
	case '2':
		$tpl = $imglnk[$imgrnd['1']];
	break;
	case '3':
		$tpl = $imglnk[$imgrnd['2']];
	break;
	case '4':
		$tpl = $imglnk[$imgrnd['3']];
	break;
	case '5':
		$tpl = $imglnk[$imgrnd['4']];
	break;
}
if(isset($_REQUEST['p'])) { $p = $_REQUEST['p']; } else { $p = ''; }
if(isset($_REQUEST['zip'])) { $c = $_REQUEST['zip']; } else { $c = ''; }
if(isset($_REQUEST['d'])) { $d = $_REQUEST['d']; } else { $d = ''; }
if(isset($_REQUEST['e'])) { $e = $_REQUEST['e']; } else { $e = ''; }
echo('<!DOCTYPE html>');
echo('<html>');
echo('<head>');
$title = 'ZERO FEE DELIVERY';
$description = 'Pay Zero 0% Delivery Fees > https://idrivezero.com';
echo('<title>'.$title.'</title>');
if($p == '') {
	$scrollColor = '#000000';
} elseif($p == 'order') {
	if($c == '') {
		$scrollColor = '#000000';
	} else {
		$scrollColor = '#FFFFFF';
	}
} elseif($p == 'about') {
		$scrollColor = '#000000';
} elseif($p == 'account') {
	$scrollColor = '#FFFFFF';
} elseif($p == 'profile') {
	$scrollColor = '#FFFFFF';
} elseif($p == 'business') {
	$scrollColor = '#FFFFFF';
}
$css = ('
::-webkit-scrollbar {
    height: 12px;
    width: 12px;
    background: '.$scrollColor.';
}
::-webkit-scrollbar-thumb {
    background: '.$scrollColor.';
    -webkit-border-radius: 1ex;
    -webkit-box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.75);
}
::-webkit-scrollbar-corner {
    background: '.$scrollColor.';
}
img {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px0px 0px;
	border: 0px;	
}
.input {
	font-family: Arial;
	font-size: 16px;
	font-color: #FFFFFF;		
}
html {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	height: 100%;
	min-height: 100%;
	background: #000000 url('.$tpl.') no-repeat center center fixed;
	background-color: #FFFFFF;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	text-align: center;
	scrollbar-color: '.$scrollColor.' '.$scrollColor.';
	scrollbar-arrow-color: '.$scrollColor.';
	scrollbar-width: thin;
}
body {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 100%;
	height: 100%;
	z-index: 0;
	position: relative;
	text-align: center;
	scrollbar-color: '.$scrollColor.' '.$scrollColor.';
	scrollbar-width: thin;
	scrollbar-base-color: '.$scrollColor.';
	scrollbar-face-color: '.$scrollColor.';
	scrollbar-3dlight-color: '.$scrollColor.';
	scrollbar-highlight-color: '.$scrollColor.';
	scrollbar-track-color: '.$scrollColor.';
	scrollbar-arrow-color: '.$scrollColor.';
	scrollbar-shadow-color: '.$scrollColor.';
	scrollbar-dark-shadow-color: '.$scrollColor.';
}
div.frostLogin {
	margin: 0px 0px 0px 0px;
	padding: 45px 0px 0px 0px;
	background: #000000 url(./www-img/mmeLogin1.png) no-repeat center;
	background-size: cover;
	width: 100%;
	height: 100%;
	top: 0px;
	right: 0px;
	bottom: 0px;
	left: 0px;
	background-color: #333333;
	-webkit-opacity: 0.9;
	-moz-opacity: 0.9;
	-o-opacity: 0.9;
	opacity: 0.9;
	position: fixed;
	z-index: 2;
}
div.nav {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 100%;
	height: 46px;
	top: 0px;
	border-width: 1px;
	border-color: #090909;
	border-style: solid;
	background-color: #000000;
	z-index: 333;
	position: fixed;
	text-align: left;
	-webkit-opacity: 1.0;
	-moz-opacity: 1.0;
	-o-opacity: 1.0;
	opacity: 1.0;
}
div.navSpace {
	margin: 45px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	text-align: left;
	width: 100%;
	height: 100%;
	position: relative;
	z-index: 5;
}
div.Notify {
	margin: 1px 0px 0px 49px;
	padding: 0px 0px 0px 0px;
	width: 300px;
	height: 45px;
	top: 0px;
	z-index: 666;
	text-align: left;
	vertical-align: top;
	position: fixed;
	border-width: 0px;
	border-color: #333333;
	border-style: solid;
	background-color: #000000;
	font-family: Arial;
	font-size: 12px;
	color: #FFFFFF;
	display: none;
	left: 0px;
	-webkit-opacity: 0.8;
	-moz-opacity: 0.8;
	-o-opacity: 0.8;
	opacity: 0.8;
	-o-border-radius: 8px;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px;
}
div.navIcon {
	width: 45px;
	height: 45px;
	background-color: #000000;
	cursor: pointer;
}
div.AdFeed {
	margin: 1px 0px 1px 0px;
	padding: 0px 0px 0px 0px;
	width: 95px;
	height: 45px;
	top: 0px;
	right: 0px;
	z-index:669;
	position: fixed;
	float: right;
}
div.cloudMenu {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 45px;
	height: 45px;
	top: 0px;
	right: 101px;
	z-index: 669;
	position: fixed;
	float: right;
	cursor: pointer;
	border-width: 1px;
	border-color: #000000;
    background-color: #000000;
	border-style: solid;
	-o-border-radius: 15px;
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	border-radius: 15px;
}
div.cloudMenuNav {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 100%;
	height: 100%;
	z-index: 89;
	text-align: left;
	position: fixed;
	top: 47px;
	border-width: 0px;
	border-color: #333333;
	border-style: solid;
	background-color: #000000;
	display: none;
	right: 0px;
	-webkit-opacity: 0.9;
	-moz-opacity: 0.9;
	-o-opacity: 0.9;
	opacity: 0.9;
}
div.page {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 100%;
	height: 100%;
	text-align: left;
	border-width: 0px;
	border-color: #FF0000;
	border-style: solid;
	text-align: center;
	overflow-x: hidden;
	overflow-y: scroll;
	position: absolute;
	z-index: 5;
}
div.homeWelcome {
	margin: 45px auto 0px auto;
	padding: 0px 0px 0px 0px;
	background: url(./www-img/zerofees.png) no-repeat center;
	background-size: cover;
	width: 300px;
	height: 300px;
	top: 25px;
	-webkit-opacity: 0.8;
	-moz-opacity: 0.8;
	-o-opacity: 0.8;
	opacity: 0.8;
	-o-border-radius: 150px;
	-webkit-border-radius: 150px;
	-moz-border-radius: 150px;
	border-radius: 150px;
	position: relative;
	z-index: 5;
}
div.homeOrder {
	margin: 0px auto 0px auto;
	padding: 0px 0px 0px 0px;
	background: url(./www-img/StartYourOrderNow1.png) no-repeat center;
	background-size: cover;
	width: 300px;
	height: 50px;
	top: 55px;
	position: relative;
	z-index: 5;
}
div.accountMain {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 100%;
	height: 100%;
	background-color: #000000;
	-webkit-opacity: 0.9;
	-moz-opacity: 0.9;
	-o-opacity: 0.9;
	opacity: 0.9;
}
div.orderMain {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 100%;
	height: 100%;
	background-color: #FFFFFF;
}
div.aboutMain {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 100%;
	height: 100%;
	background-color: #000000;
}
div.businessMain {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 100%;
	height: 100%;
	background-color: #FFFFFF;
}
div.navButton {
	margin: 10px auto 0px auto;
	padding: 0px 0px 0px 0px;
	background-image: linear-gradient(#FFFFFF, #C327F9);
	background-size: cover;
	width: 225px;
	height: 50px;
	top: 55px;
	text-align: center;
	border-width: 5px;
	border-color: #4345FB;
	border-style: solid;
	-o-border-radius: 50px;
	-webkit-border-radius: 50px;
	-moz-border-radius: 50px;
	border-radius: 50px;
	font-weight: bold;
	position: relative;
	z-index: 5;
}
div.response {
    margin: 0px 0px 0px 0px;
    padding: 0px 0px 0px 0px;
    width: 100%;
    height: 100%;
    top: 45px;
    background-color: #FFFFFF;
    overflow-x: hidden;
    overflow-y: scroll;
    position: fixed;
    z-index: 66;
}
div.verify {
    margin: 0px 0px 0px 0px;
    padding: 0px 0px 0px 0px;
    width: 100%;
    height: 100%;
    top: 45px;
    background-color: #000000;
    overflow-x: hidden;
    overflow-y: scroll;
	-webkit-opacity: 0.9;
	-moz-opacity: 0.9;
	-o-opacity: 0.9;
	opacity: 0.9;
    position: fixed;
    z-index: 66;
}
span.f_arial10 {
	font-family: Arial;
	font-size: 10px;		
}
span.f_arial11 {
	font-family: Arial;
	font-size: 11px;		
}
span.f_arial12 {
	font-family: Arial;
	font-size: 12px;		
}
span.f_arial13 {
	font-family: Arial;
	font-size: 13px;		
}
span.f_arial14 {
	font-family: Arial;
	font-size: 14px;		
}
span.f_arial15 {
	font-family: Arial;
	font-size: 15px;		
}
span.f_arial16 {
	font-family: Arial;
	font-size: 16px;		
}
span.f_arial17 {
	font-family: Arial;
	font-size: 17px;		
}
span.f_arial18 {
	font-family: Arial;
	font-size: 18px;		
}
span.f_arial19 {
	font-family: Arial;
	font-size: 19px;		
}
span.f_arial20 {
	font-family: Arial;
	font-size: 20px;		
}
span.f_arial21 {
	font-family: Arial;
	font-size: 21px;		
}
span.f_arial22 {
	font-family: Arial;
	font-size: 22px;		
}
span.f_arial23 {
	font-family: Arial;
	font-size: 23px;		
}
span.f_courier20 {
	font-family: Courier;
	font-size: 20px;		
}
span.f_courier22 {
	font-family: Courier;
	font-size: 22px;		
}
span.f_bold {
	font-weight: bold;		
}
span.f_underline {
	text-decoration: underline;
}
span.c_ffffff {
	color: #FFFFFF;
}
span.c_000000 {
	color: #000000;
}
span.c_ff0000 {
	color: #FF0000;
}
span.c_008000 {
	color: #008000;
}
span.c_ffff00 {
	color: #FFFF00;
}
span.c_00ffff {
	color: #00FFFF;
}
span.c_f32d40 {
	color: #F32D40;
}
span.c_4285f4 {
	color: #4285F4;
}
span.c_ea4335 {
	color: #EA4335;
}
span.c_fbbc05 {
	color: #FBBC05;
}
span.c_34a853 {
	color: #34A853;
}
span.c_aa7ece {
	color: #AA7ECE;
}
span.c_4345fb {
	color: #4345FB;
}
span.c_0000ee {
	color: #0000EE;
}
');
$css = str_replace(array("\t","\n","\r"),"",$css);
echo('<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=100, viewport-fit=cover, user-scalable=yes, shrink-to-fit=no" />');
echo('<meta name="HandheldFriendly" content="true">');
echo('<meta name="theme-color" content="#000000">');
echo('<meta name="msapplication-navbutton-color" content="#000000">');
echo('<meta name="apple-mobile-web-app-status-bar-style" content="#000000">');
echo('<meta name="description" content="'.$description.'">');
echo('<meta name="keywords" content="Delivery, Free Delivery, Drive Zero, Uber Eats, Door Dash, Grub Hub, Seamless, Postmates">');
echo('<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">');
echo('<meta prefix="og: http://ogp.me/ns#" property="og:title" content="'.$title.'" />');
echo('<meta prefix="og: http://ogp.me/ns#" property="og:description" content="'.$description.'" />');
echo('<meta prefix="og: http://ogp.me/ns#" property="og:image" content="https://idrivezero.com/www-img/Screenshot3.png" />');
echo('<meta prefix="og: http://ogp.me/ns#" property="og:url" content="https://idrivezero.com" />');
echo('<meta name="copyright" content="Drive Zero @ https://idrivezero.com">');
echo('<meta name="author" content="Jim.com @ gemdeals395@gmail.com">');
//echo('<script src="./www-cgi/jquery-1.9.1.min.js"></script>');
//echo('<script src="./www-cgi/jquery-1.12.1.min.js"></script>');
//echo('<script src="./www-cgi/jquery-2.2.1.min.js"></script>');
echo('<script src="./www-cgi/jquery-3.5.1.min.js"></script>');
//echo('<script src="./www-cgi/jquery-ui.min.js"></script>');
//echo('<script src="./www-cgi/jquery-ui.min.css"></script>');
//echo('<script src="./www-cgi/jquery-ui.structure.min.css"></script>');
//echo('<script src="./www-cgi/jquery-ui.theme.min.css"></script>');
echo('<link rel="stylesheet" href="./www-cgi/vegas.min.css">');
echo('<script src="./www-cgi/vegas.min.js"></script>');
//echo('<link rel="stylesheet" href="./www-cgi/trumbowyg/dist/ui/trumbowyg.min.css">');
//echo('<script src="./www-cgi/trumbowyg/dist/trumbowyg.min.js"></script>');
//echo('<link rel="icon" type="image/png" href="./favicon.png">');
//echo(' <script src="https://www.paypal.com/sdk/js?client-id=AZrq4bJw-wy_BuFvKg2lDXOOgVZOVopuYfzOFfeooW-ntaT_jEyBTNqxdSsHpX5hNJ94MszaqXAj4dAI&currency=USD" data-sdk-integration-source="button-factory"></script>');
echo(' <script src="https://www.paypal.com/sdk/js?client-id=AZ-p_Z-4uw2GfBZg1OwZTvpybwhr2Tc8GlP0eAR4gLDKbT2-jFvP0kBTrurLJ-oNe-XPAPB-EdOZ0P6D&currency=USD" data-sdk-integration-source="button-factory"></script>');
echo('<style>'.$css.'</style>');
//URL(location.href).searchParams.get(\'p\');
$scripts = ('
	function findGetParameter(parameterName) {
	    var result = null,
	        tmp = [];
	    var items = location.search.substr(1).split("&");
	    for (var index = 0; index < items.length; index++) {
	        tmp = items[index].split("=");
	        if (tmp[0] === parameterName) result = decodeURIComponent(tmp[1]);
	    }
	    return result;
	};
	window.onload = function() {
		var newURL = window.location.protocol + "//" + window.location.host + "/" + window.location.pathname + window.location.search;
		var p = findGetParameter(\'p\');
		var c = findGetParameter(\'c\');
        var v = findGetParameter(\'v\');
		if(p === "account") {
			$("#page").load("./www-cgi/account.php");
		} else if(p === "order") {
			$("#page").load("./www-cgi/order.php");
		} else if(p === "about") {
			$("#page").load("./www-cgi/about.php");
		} else if(p === "profile") {
			$("#page").load("./www-cgi/profile.php?c="+c);
		} else if(p === "business") {
			$("#page").load("./www-cgi/business.php?c="+c);
		} else if(p === "pverify") {
            $("#page").load("./www-cgi/account.php?pv="+v);
        } else if(p === "bverify") {
            $("#page").load("./www-cgi/account.php?bv="+v);
        } else if(p === "dverify") {
            $("#page").load("./www-cgi/account.php?dv="+v);
        } else if(p === "preset") {
            $("#page").load("./www-cgi/account.php?prv="+v);
        } else if(p === "advertise") {
            $("#page").load("./www-cgi/adgenx.php");
        } else {
			$("#page").load("./www-cgi/default.php");
		}
	};
	$(document).ready(function() {
		$("p").click(function() {
			$(this).hide();
		});
		setInterval(function() {
			$("#Notify").load("./www-cgi/ciri.php?p=msg");
			$("#AdFeed").load("./www-cgi/ciri.php?p=img");
		}, 9999);
		$("#Notify").delay(5000).fadeIn(function() {
		});
		$("#navIcon").click(function() {
			window.location = \''.$_SERVER['PHP_SELF'].'\';
		});
		$("#cloudMenu").click(function() {
            if($("#cloudMenu").css("background-color") == "rgb(0, 0, 0)") {
                $("#cloudMenu").css("background-color","rgb(36, 100, 240)");
            } else {
                $("#cloudMenu").css("background-color","rgb(0, 0, 0)");
            }
			$("#cloudMenuNav").slideToggle();
		});
		$("body").vegas( {
			overlay: "false",
			animation: "random",
			transition: ["fade","fade2","slideLeft","slideLeft2","slideRight","slideRight2"],
			delay: 9999,
			slides: [{src: "'.$imglnk[$imgrnd['0']].'"},{src: "'.$imglnk[$imgrnd['1']].'"},{src: "'.$imglnk[$imgrnd['2']].'"},{src: "'.$imglnk[$imgrnd['3']].'"},{src: "'.$imglnk[$imgrnd['4']].'"}]
		});
	});
');
$scripts = str_replace(array("\t","\n","\r"),"",$scripts);
echo('<script>'.$scripts.'</script>');

echo('</head>');
echo('<body>');

echo('<div class="response" id="response" style="display: none;"></div>');
echo('<div class="verify" id="verify" style="display: none;"></div>');

echo('<div class="nav"><div class="navIcon" id="navIcon"><img src="./www-img/DriveZero.png" width="45" height="45"></div>');

echo('<div class="Notify" id="Notify"></div>');

echo('<div id="AdFeed" class="AdFeed"><a href="https://www.mealsonwheelsamerica.org/" target="_blank"><img src="./www-img/ciriMealsOnWheels.jpg" width="95" height="45"></a></div>');

echo('<div class="cloudMenu" id="cloudMenu"><img src="./www-img/menuIcon2_Free_Food_Delivery.png" width="45" height="45" id="menuIcon"></div>');

echo('<div class="cloudMenuNav" id="cloudMenuNav">');

echo('<a href="'.$_SERVER['PHP_SELF'].'?p=account" style="color: #0000EE; text-decoration: none;"><div class="navButton"><div style="margin: 11px 0px 0px 0px; vertical-align: middle;"><span class="f_arial22">Drive Zero</span></div></div></a>');

echo('<a href="'.$_SERVER['PHP_SELF'].'?p=order" style="color: #0000EE; text-decoration: none;"><div class="navButton"><div style="margin: 11px 0px 0px 0px; vertical-align: middle;"><span class="f_arial22">Order</span></span></div></div></a>');

echo('<a href="'.$_SERVER['PHP_SELF'].'?p=advertise" style="color: #0000EE; text-decoration: none;"><div class="navButton"><div style="margin: 11px 0px 0px 0px; vertical-align: middle;"><span class="f_arial22">Advertise</span></div></div></a>');

echo('<a href="'.$_SERVER['PHP_SELF'].'?p=about" style="color: #0000EE; text-decoration: none;"><div class="navButton"><div style="margin: 11px 0px 0px 0px; vertical-align: middle;"><span class="f_arial22">Help</span></div></div></a>');

echo('</div>');

echo('</div>');

if($p == '') {//DEFAULT
	echo('<div class="page" id="page">');
	
	echo('</div>');
} elseif($p == 'account') {//ACCOUNT
	echo('<div class="accountMain">');
	echo('<div class="page" id="page">');
	
	echo('</div>');
	echo('</div>');
} elseif($p == 'pverify') {
    echo('<div class="accountMain">');
    echo('<div class="page" id="page">');
    
    echo('</div>');
    echo('</div>');
} elseif($p == 'bverify') {
    echo('<div class="accountMain">');
    echo('<div class="page" id="page">');
    
    echo('</div>');
    echo('</div>');
} elseif($p == 'dverify') {
    echo('<div class="accountMain">');
    echo('<div class="page" id="page">');
    
    echo('</div>');
    echo('</div>');
} elseif($p == 'preset') {
    echo('<div class="accountMain">');
    echo('<div class="page" id="page">');
    
    echo('</div>');
    echo('</div>');
} elseif($p == 'order') {//ORDER
	echo('<div class="accountMain">');
	echo('<div class="page" id="page">');
	
	echo('</div>');
	echo('</div>');
} elseif($p == 'about') {//ABOUT
	echo('<div class="aboutMain">');
	echo('<div class="page" id="page">');
	
	echo('</div>');
	echo('</div>');
} elseif($p == 'profile') {//PROFILE
	echo('<div class="accountMain">');
	echo('<div class="page" id="page">');
	
	echo('</div>');
	echo('</div>');
} elseif($p == 'business') {//BUSINESS
	echo('<div class="businessMain">');
	echo('<div class="page" id="page">');
	
	echo('</div>');
	echo('</div>');
} elseif($p == 'advertise') {//ADVERTISE
    echo('<div class="accountMain">');
    echo('<div class="page" id="page">');
    
    echo('</div>');
    echo('</div>');
}///P

echo('</body>');
echo('</html>');
?>
