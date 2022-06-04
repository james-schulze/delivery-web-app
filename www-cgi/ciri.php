<?php
@session_start();
$css = ('

');
$scripts = ('

');
$ciri = array(//array('mssg'=>'')
	array('id'=>'1', 'img'=>'ciriBassBoosted.jpg', 'mssg'=>'driving music **BASS BOOSTED**...', 'url'=>'https://www.youtube.com/watch?v=RkkdYdWMfQ0'),
	array('id'=>'2', 'img'=>'ciriLucchese.jpg', 'mssg'=>'try handmade boots by Lucchese', 'url'=>'http://www.lucchese.com'),
	array('id'=>'3', 'img'=>'ciriMonsterEnergy.jpg', 'mssg'=>'try a Monster Energy Ultra Sunrise today...', 'url'=>'http://www.monsterenergy.com'),
	array('id'=>'4', 'img'=>'ciriTacoBell.jpg', 'mssg'=>'try a Taco Bell Grande Stacker Box...', 'url'=>'http://www.tacobell.com'),
	array('id'=>'5', 'img'=>'droHighTimesBanner1tmb.jpg', 'mssg'=>'wanna get high?', 'url'=>'http://www.hightimes.com'),
	array('id'=>'6', 'img'=>'ciriCallOfDutyMobile.jpg', 'mssg'=>'checkout Call of Duty mobile!', 'url'=>'http://www.callofduty.com'),
	array('id'=>'7', 'img'=>'ciriTerminator.jpg', 'mssg'=>'I\'ll be back...', 'url'=>'https://www.amazon.com/Terminator-Dark-Fate-Linda-Hamilton/dp/B07ZP8J83T'),
	array('id'=>'8', 'img'=>'ciriMcdonalds.jpg', 'mssg'=>'da da da dat da...', 'url'=>'http://www.mcdonalds.com'),
	array('id'=>'9', 'img'=>'ciriHertz.jpg', 'mssg'=>'call hertz, we\'ll pick you up...', 'url'=>'http://www.hertz.com'),
	array('id'=>'10', 'img'=>'ciriMarlboro.jpg', 'mssg'=>'Come to Marlboro country...', 'url'=>'http://www.marlboro.com'),
	array('id'=>'11', 'img'=>'ciriMyFamilyMobile.jpg', 'mssg'=>'you have voicemail...', 'url'=>'http://www.myfamilymobile.com'),
	array('id'=>'12', 'img'=>'ciriStarWars.jpg', 'mssg'=>'the force is with you...', 'url'=>'http://www.starwars.com'),
	array('id'=>'13', 'img'=>'ciriPizzaHut.jpg', 'mssg'=>'try a Pizza Hut \'The Original Pan\' today...', 'url'=>'http://www.pizzahut.com'),
	array('id'=>'14', 'img'=>'ciriPopeyes.jpg', 'mssg'=>'try Popeye\'s new chicken sandwich!', 'url'=>'http://www.popeyes.com'),
	array('id'=>'15', 'img'=>'ciriStoli.jpg', 'mssg'=>'Freedom of Vodka...', 'url'=>'http://www.stoli.com'),
	array('id'=>'16', 'img'=>'ciriParamount.jpg', 'mssg'=>'I feel the need, the need for speed...', 'url'=>'http://www.paramount.com'),
	array('id'=>'17', 'img'=>'ciriKidRock.jpg', 'mssg'=>'slow your roll...', 'url'=>'https://www.youtube.com/watch?v=ODuKIpDRcXI'),
	array('id'=>'18', 'img'=>'ciriDollarGeneral.jpg', 'mssg'=>'another day, another dollar...', 'url'=>'http://www.dollargeneral.com'),
	array('id'=>'19', 'img'=>'ciriFubu.jpg', 'mssg'=>'VOTE F.U.B.U.', 'url'=>'http://www.fubu.com')
);

include('./database.php');

if(isset($_REQUEST['p'])) { $p = $_REQUEST['p']; } else { $p = ''; }
if(isset($_REQUEST['c'])) { $c = $_REQUEST['c']; } else { $c = ''; }
$ai = '<img src="./www-img/vipNotSiri.jpg" width="45" height="45" style="padding: 0px 2px 0px 0px;float: left;">@Ciri Says::&nbsp;';

function href($link) {
	if(preg_match('/^https/', $link)) {
		$url = $link;
	} elseif(preg_match('/^http/', $link)) {
		$url = $link;
	} else {
		$url = 'http://'.$link;
	}
	return $url;
}

if($p == 'img') {
	if($_SESSION['adSelect'] == 1) {
		$html = '';
		$data = dbi('1', 'SELECT * FROM ads WHERE adi = \''.$_SESSION['adFeed'].'\' ');
		while($row_data = mysqli_fetch_array($data)) {
			$url = href($row_data['url']);
			if($row_data['imglnk1'] == '') {
				$imgloc = './www-img/noImage2.jpg';
			} else {
				if(preg_match('/www-img/',$row_data['imglnk1'])) {
					$imgloc = explode('www-img',$row_data['imglnk1']);
					$imgloc = './www-img'.$imgloc['1'];
				} else {
					$imgloc = explode('www-bin',$row_data['imglnk1']);
					$imgloc = './www-bin'.$imgloc['1'];
				}
			}
			echo('<a href="'.$url.'" target="_blank" style="color: #0000EE;"><img src="'.$imgloc.'" width="95" height="45"></a>');
		}
	} elseif($_SESSION['adSelect'] == 2) {
		echo('<a href="'.$ciri[$_SESSION['adFeed']]['url'].'" target="_blank" style="color: #0000EE;">'.$ciri[$_SESSION['adFeed']]['img'].'</a>');
	}
} elseif($p == 'msg')  {
	if(!isset($_SESSION['adSelect'])) {
		$_SESSION['adSelect'] = '0';
	}
	if(!isset($_SESSION['adFeed'])) {
		$_SESSION['adFeed'] = '0';
	}
	
	$qa = dbi('1', 'SELECT adi FROM adbuy WHERE adbuy.end > \''.time().'\' ORDER BY RAND() LIMIT 1 ');
	if(mysqli_num_rows($qa)) {
		$html = '';
		$_SESSION['adSelect'] = 1;
		while($row_qa = mysqli_fetch_array($qa)) {
			$_SESSION['adFeed'] = $row_qa['adi'];
		}
		$data = dbi('1', 'SELECT * FROM ads WHERE adi = \''.$_SESSION['adFeed'].'\' ');
		while($row_data = mysqli_fetch_array($data)) {
			$url = href($row_data['url']);
			$html .= $ai.'<a href="'.$url.'" target="_blank" style="color: #0000EE;">'.$row_data['ciri'].'</a>';
		}
		$css = str_replace(array("\t","\n","\r"),"",$css);
		$scripts = str_replace(array("\t","\n","\r"),"",$scripts);
		echo('<style>'.$css.'</style>');
		echo('<script>'.$scripts.'</script>');
		echo($html);
	} else {
		/*
		$html = '';
		$cm = random_int(0,18);
		$_SESSION['adSelect'] = 2;
		$_SESSION['adFeed'] = $cm;
		$html .= $ai.'<a href="'.$ciri[$_SESSION['adFeed']]['url'].'" target="_blank" style="color: #0000EE;">'.$ciri[$_SESSION['adFeed']]['mssg'].'</a>';
		$css = str_replace(array("\t","\n","\r"),"",$css);
		$scripts = str_replace(array("\t","\n","\r"),"",$scripts);
		echo('<style>'.$css.'</style>');
		echo('<script>'.$scripts.'</script>');
		echo($html);
		*/
		$qb = dbi('1', 'SELECT COUNT(*) FROM ads ');
		$qb_row = mysqli_fetch_row($qb);
		if($qb_row['0'] > 0) {
		
		} else {
			$cm = count($ciri);
			$start = time();
			$duration = 86400*30*120;
			$end = $start+$duration;
			$created = date("Y-m-d H:i:s");
			for($i=0;$i<$cm;$i++) {
				$imgloc = '/var/www/html/dro/www-img/'.$ciri[$i]['img'];
				dbi('1', 'INSERT INTO ads (uid,ciri,url,imglnk1,created) values (\'1\', \''.htmlentities($ciri[$i]['mssg'], ENT_QUOTES, 'UTF-8').'\', \''.$ciri[$i]['url'].'\', \''.$imgloc.'\', \''.$created.'\') ');
				dbi('1', 'INSERT INTO adbuy (adi,uid,response,start,end,created) values (\''.$ciri[$i]['id'].'\', \'1\', \'AdGenX_SYS\', \''.$start.'\', \''.$end.'\', \''.$created.'\') ');
			}
		}
	}
	

} else {
	echo('Ciri AdGenX Advertising System...');
}
?>
