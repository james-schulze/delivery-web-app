<?php
function fsp($aa,$bb) {
	$ns  = $aa;
	$nsx = explode(' ',$ns);
	$nsy = count($nsx);
	$nsz = '';
	for($nsi=0;$nsi<$nsy;$nsi++) {
		if(strlen($nsx[$nsi]) > $bb) {
			$nsz .= wordwrap($nsx[$nsi], $bb, ' ', true);
		} else {
			$nsz .= $nsx[$nsi].' ';
		}
	}
	return $nsz;
}
?>