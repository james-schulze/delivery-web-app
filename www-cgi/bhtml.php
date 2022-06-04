<?php
@session_start();
include('./database.php');
if(isset($_GET['d'])) {
	$d = htmlentities($_GET['d'], ENT_QUOTES, 'UTF-8');
	$qa = dbi('1','SELECT user_business.bhtml FROM user_business WHERE user_business.bname = "'.$d.'" AND user_business.bverified = "1"');
	while($row_qa = mysqli_fetch_array($qa)) {
		echo($row_qa[bhtml]);
	}
}
?>