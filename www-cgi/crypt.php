<?php
@session_start();
function crx($aa,$bb,$cc) {
	if($aa == '1') {
		$dat = $bb;
		$ivx = substr($cc,0,1).substr($cc,strlen($cc)-1,1);
		for($ivxi=0;$ivxi<4;$ivxi++) {
			$ivx .= $ivx;
		}
		$ivs = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256,MCRYPT_MODE_ECB);
		$ivv = mcrypt_create_iv($ivs,MCRYPT_RAND);
		$dat = mcrypt_encrypt(MCRYPT_RIJNDAEL_256,$ivx,$dat,MCRYPT_MODE_ECB,$ivv);
		//return 	$dat;
	}
	if($aa == '2') {
		$dat = $bb;
		$ivx = substr($cc,0,1).substr($cc,strlen($cc)-1,1);
		for($ivxi=0;$ivxi<4;$ivxi++) {
			$ivx .= $ivx;
		}
		$ivs = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256,MCRYPT_MODE_ECB);
		$ivv = mcrypt_create_iv($ivs,MCRYPT_RAND);
		$dat = mcrypt_decrypt(MCRYPT_RIJNDAEL_256,$ivx,$dat,MCRYPT_MODE_ECB,$ivv);
		//return $dat;
	}
	return $dat;
}
?>