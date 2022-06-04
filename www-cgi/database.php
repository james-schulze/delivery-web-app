<?php
@session_start();
function dbi($aa,$bb) {
	$run = 1;
	if($run == 1) {//LOC
		$db_a = 'localhost';
		$db_b = 'app';
		$db_c = 'H0rs3Sh03';
		$db_d = 'mme';
	} elseif($run == 2) {//000
		$db_a = 'localhost';
		$db_b = 'id15022472_app';
		$db_c = '1YDJ&9oN%68*_G)i';
		$db_d = 'id15022472_appngine';
	} elseif($run == 3) {//NCH
		$db_a = 'localhost';
		$db_b = 'idrirjgx_app';
		$db_c = 'k2j3h42k_!lkjlkj';
		$db_d = 'idrirjgx_mme';
	}
	switch($aa) {
		case 1:
			$db   = array();
			$db_e = array();
			$db = mysqli_connect($db_a,$db_b,$db_c);
			mysqli_select_db($db,$db_d);
			$db_e = mysqli_query($db,$bb);
			mysqli_close($db);
			return $db_e;
			unset($db,$db_a,$db_b,$db_c,$db_d,$db_e);
			break;
	}
}
?>