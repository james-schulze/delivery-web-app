<?php
@session_start();
include('./database.php');
$css = ('
div.pprofile {
	margin: 0px auto 10px auto;
	padding: 0px 0px 0px 0px;
	width: 97%;
	border-width: 1px;
	border-color: #4345FB;
	border-style: solid;
	background-image: linear-gradient(#FFFFFF, #C327F9);
	background-size: cover;
	-o-border-radius: 20px;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;
	overflow-x: hidden;
	overflow-y: hidden;
	position: relative;
	z-index: 5;
}
div.profileImage {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 60px;
	height: 60px;
	top: 0px;
	-webkit-opacity: 0.8;
	-moz-opacity: 0.8;
	-o-opacity: 0.8;
	opacity: 0.8;
	-o-border-radius: 30px;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	border-radius: 30px;
	position: relative;
	z-index: 5;
}
');
$scripts = ('
    function historyDetails(oid) {
        event.preventDefault();
        $("#response").toggle();
        $("#response").load("./www-cgi/details.php?c="+oid+"&d=history");
        return false;
    };
');
$css = str_replace(array("\t","\n","\r"),"",$css);
$scripts = str_replace(array("\t","\n","\r"),"",$scripts);
echo('<style>'.$css.'</style>');
echo('<script>'.$scripts.'</script>');
if(isset($_GET['c'])) {
	echo('<div class="navSpace"><span class="c_ffffff">');
	echo('<h3>Search Profiles</h3>');
	
	$c = htmlentities($_GET['c'], ENT_QUOTES, 'UTF-8');
	$qa = dbi('1','SELECT * FROM user_profile WHERE ali = "'.$c.'"');
	if(mysqli_num_rows($qa) > 0) {
		while($row_qa = mysqli_fetch_array($qa)) {
		    $aid = $row_qa['aid'];
			if($row_qa['pic'] == null) { $pic = './www-img/noImage2.jpg'; } else { $pic = $row_qa['pic']; }
			if($row_qa['ali'] == null) { $ali = 'N/A'; } else { $ali = $row_qa['ali']; }
			if($row_qa['email'] == null) { $email = 'N/A'; } else { $email = $row_qa['email']; }
			if($row_qa['verified'] == null) { $verified = 'N/A'; } else { $verified = $row_qa['verified']; }
			if($row_qa['fname'] == null) { $fname = 'N/A'; } else { $fname = $row_qa['fname']; }
			if($row_qa['lname'] == null) { $lname = 'N/A'; } else { $lname = $row_qa['lname']; }
			if($row_qa['add1'] == null) { $add1 = 'N/A'; } else { $add1 = $row_qa['add1']; }
			if($row_qa['add2'] == null) { $add2 = 'N/A'; } else { $add2 = $row_qa['add2']; }
			if($row_qa['city'] == null) { $city = 'N/A'; } else { $city = $row_qa['city']; }
			if($row_qa['state'] == null) { $state = 'N/A'; } else { $state = $row_qa['state']; }
			if($row_qa['zip'] == null) { $zip = 'N/A'; } else { $zip = $row_qa['zip']; }
			if($row_qa['phone'] == null) { $phone = 'N/A'; } else { $phone = $row_qa['phone']; }
			$tel = str_replace(array("!","@","#","$","%","^","&","*","(",")","-","_"," "),"",$phone);
			if($row_qa['verified'] == 0) { $verified = '<span class="c_ff0000">❌ UNVERIFIED</span>'; } else { $verified = '<span class="c_008000">✅ VERIFIED</span>'; }
			echo('<div class="pprofile"><span class="f_arail22"><span class="f_bold"><span class="c_000000"><div class="profileImage" style="background: url('.$pic.') no-repeat center; background-size: cover;"></div>&nbsp;User:<span class="c_4345fb">'.$ali.'</span> '.$verified.'<br>&nbsp;First name:'.$fname.'&nbsp;Last name:'.$lname.'<br>&nbsp;Address 1:'.$add1.'<br>&nbsp;Address 2:'.$add2.'<br>&nbsp;City:'.$city.'<br>&nbsp;State:'.$state.'<br>&nbsp;Zip:'.$zip.'<br>&nbsp;Phone:<a href="tel:'.$tel.'" style="color: #000000;">'.$phone.'</a><br>&nbsp;Email:<a href="mailto:'.$email.'" style="color: #000000;">'.$email.'</a></span></span></span></div>');
		}
		/*
		if($_SESSION['secact'] == $aid) {
		    
		    echo('<div class="profile" id="profile4"><div class="profileScroll" id="profileScroll4"><div style="direction: ltr;"><span class="f_arial20"><span class="c_ffffff"><span class="f_bold">&nbsp;&nbsp;&nbsp;Your order history&nbsp;📋</span></span></span>');
		    
		    $qh = dbi('1','SELECT * FROM user_business_orders WHERE user_business_orders.aid = "'.$_SESSION['secact'].'"');
		    echo('<table border="0" cellpadding="0" cellspacing="1" width="100%">');
		    echo('<tr style="color: #000000; background-color: #999999;"><td>Order ID:</td><td>1st Item:</td><td>Item Count:</td><td>Total Price:</td><td>Details:</td></tr>');
		    if(mysqli_num_rows($qh) > 0) {
    		    while($row_qh = mysqli_fetch_array($qh)) {
    		        $oidlen = strlen($row_qh['oid']);
    		        echo('<tr><td>'.substr($row_qh['oid'],$oidlen-6,$oidlen).'</td><td>'.$row_qh['item'].'</td><td>'.$row_qh['item_count'].'</td><td>'.$row_qh['total'].'</td><td style="text-align: center;"><a href="javascript:;" style="text-decoration: none;" onclick="historyDetails(\''.$row_qh['oid'].'\');"><img src="./www-img/zoom.png" width="25" height="25"></a></td></tr>');
    		    }
		    } else {
		        echo('<tr><td colspan="5">You have no order history...</td></tr>');
		    }
		    echo('</table>');
		    echo('</div></div></div>');
		    
		}
		*/
	} else {
		echo('<h4>❌ WARNING Profile missing!</h5>');
	}

	echo('</div></div>');
} else {
	echo('<div class="navSpace"><span class="c_ffffff">');

	echo('<h3>User Profiles</h3>');

	echo('</div></div>');
}
?>