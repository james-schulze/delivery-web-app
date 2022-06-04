<?php
@session_start();
include('./auth.php');
include('./database.php');
include('./forms.php');
include('./dbq.php');
if(isset($_SESSION['dseen'])) {
    $_SESSION['dseen'] = 1;
}
if(isset($_SESSION['audio'])) {
    $_SESSION['audio'] = 1;
}
$css = ('

');
$scripts = ('
	$(document).ready(function() {
		$(\'input[name=dbq9]\').change(function(){
	    	$("#postDbq9").submit();
		});
	});
	$("#userDriver").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#drive").html(response);
			}
		});
		$("#userDriver").unbind(this.submit);
		return false;
	});
	$("#userDriverStatus").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#drive").html(response);
			}
		});
		$("#userDriverStatus").unbind(this.submit);
		return false;
	});
	$("#postDbq9").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#drive").html(response);
			}
		});
		$("#postDbq9").unbind(this.submit);
		return false;
	});
');
$css = str_replace(array("\t","\n","\r"),"",$css);
$scripts = str_replace(array("\t","\n","\r"),"",$scripts);
echo('<style>'.$css.'</style>');
echo('<script>'.$scripts.'</script>');



if(isset($_POST['dac'])) {
    $dacUpdate = 0;
    $dac = htmlentities($_POST['dac'], ENT_QUOTES, 'UTF-8');
    $qa = dbi('1','SELECT * FROM user_driver WHERE aid = "'.$_SESSION['secact'].'"');
    if(mysqli_num_rows($qa) > 0) {
        $dacUpdate = 1;
        if($dac == 0) {
            dbi('1','UPDATE user_driver SET dac = "'.$dac.'" WHERE aid = "'.$_SESSION['secact'].'"');
            dbi('1','UPDATE user_rides SET driver = NULL WHERE driver = "'.$_SESSION['secact'].'"');
            dbi('1','UPDATE user_business_orders SET driver = NULL WHERE driver = "'.$_SESSION['secact'].'"');
        } elseif($dac == 1) {
            dbi('1','UPDATE user_driver SET dac = "'.$dac.'" WHERE aid = "'.$_SESSION['secact'].'"');
        } elseif($dac == 2) {
            dbi('1','UPDATE user_driver SET dac = "'.$dac.'" WHERE aid = "'.$_SESSION['secact'].'"');
            dbi('1','UPDATE user_driver SET dac = "'.$dac.'" WHERE aid = "'.$_SESSION['secact'].'"');
            dbi('1','UPDATE user_rides SET driver = NULL WHERE driver = "'.$_SESSION['secact'].'"');
            dbi('1','UPDATE user_business_orders SET driver = NULL WHERE driver = "'.$_SESSION['secact'].'"');
        }
    }
    if($dacUpdate == 1) {
        $_SESSION['dac'] = $dac;
    }
}
if(isset($_POST['ssn'])) {
    $dupdate = 0;
    $dac = htmlentities($_POST['dac'], ENT_QUOTES, 'UTF-8');
    $ssn = htmlentities($_POST['ssn'], ENT_QUOTES, 'UTF-8');
    $dl = htmlentities($_POST['dl'], ENT_QUOTES, 'UTF-8');
    $make = htmlentities($_POST['make'], ENT_QUOTES, 'UTF-8');
    $model = htmlentities($_POST['model'], ENT_QUOTES, 'UTF-8');
    $year = htmlentities($_POST['year'], ENT_QUOTES, 'UTF-8');
    $insurance_provider = htmlentities($_POST['insurance_provider'], ENT_QUOTES, 'UTF-8');
    $insurance_policy = htmlentities($_POST['insurance_policy'], ENT_QUOTES, 'UTF-8');
    $dzip = htmlentities($_POST['dzip'], ENT_QUOTES, 'UTF-8');
    $drate = htmlentities($_POST['drate'], ENT_QUOTES, 'UTF-8');
    $dper = htmlentities($_POST['dper'], ENT_QUOTES, 'UTF-8');
    $qa = dbi('1','SELECT * FROM user_driver WHERE aid = "'.$_SESSION['secact'].'"');
    if($_SESSION['dap'] == 0) {
        if(mysqli_num_rows($qa) > 0) {
            $dupdate = 1;
            dbi('1','UPDATE user_driver SET scr = "'.$_SESSION['screenName'].'", ali = "'.$_SESSION['secali'].'", ssn = "'.$ssn.'", dl = "'.$dl.'", make = "'.$make.'", model = "'.$model.'", year = "'.$year.'", insurance_provider = "'.$insurance_provider.'", insurance_policy = "'.$insurance_policy.'", dzip = "'.$dzip.'", drate = "'.$drate.'", dper = "'.$dper.'" WHERE aid = "'.$_SESSION['secact'].'"');
        } else {
            $dupdate = 1;
            dbi('1','INSERT INTO user_driver (aid,scr,ali,ssn,dl,make,model,year,insurance_provider,insurance_policy,dzip,drate,dper,created) values ("'.$_SESSION['secact'].'","'.$_SESSION['screenName'].'","'.$_SESSION['secali'].'","'.$ssn.'","'.$dl.'","'.$make.'","'.$model.'","'.$year.'","'.$insurance_provider.'","'.$insurance_policy.'","'.$dzip.'","'.$drate.'","'.$dper.'","'.date("Y-m-d H:i:s").'")');
        }
    }
    if($dupdate == 1) {
        $_SESSION['dac'] = $dac;
        $_SESSION['ssn'] = $ssn;
        $_SESSION['dl'] = $dl;
        $_SESSION['make'] = $make;
        $_SESSION['model'] = $model;
        $_SESSION['year'] = $year;
        $_SESSION['insurance_provider'] = $insurance_provider;
        $_SESSION['insurance_policy'] = $insurance_policy;
        $_SESSION['dzip'] = $dzip;
        $_SESSION['drate'] = $dzip;
        $_SESSION['dper'] = $dzip;
    }
}
if(isset($_POST['book'])) {
    $book = htmlentities($_POST['book'], ENT_QUOTES, 'UTF-8');
    dbi('1','UPDATE user_rides SET dstatus = "2" WHERE rid = "'.$book.'"');
}
if(isset($_POST['cancel'])) {
    $cancel = htmlentities($_POST['cancel'], ENT_QUOTES, 'UTF-8');
    dbi('1','UPDATE user_rides SET driver = NULL, dstatus = "0" WHERE rid = "'.$cancel.'"');
}
if(isset($_POST['bookB'])) {
    $book = htmlentities($_POST['bookB'], ENT_QUOTES, 'UTF-8');
    dbi('1','UPDATE user_business_orders SET dstatus = "2" WHERE oid = "'.$book.'"');
}
if(isset($_POST['cancelB'])) {
    $cancel = htmlentities($_POST['cancelB'], ENT_QUOTES, 'UTF-8');
    dbi('1','UPDATE user_business_orders SET driver = NULL, dstatus = "0" WHERE oid = "'.$cancel.'"');
}
if(isset($_POST['dbq9']) && $_POST['dbq9'] == 1) {
    //PAYMENT VERIFICATION LINK DRIVER
    $_SESSION['dpl'] = 1;
    $dvkey = bin2hex(random_bytes(32));
    $ckpro = dbi('1','SELECT * FROM user_profile WHERE verified = "1" AND aid = "'.$_SESSION['secact'].'"');
    if(mysqli_num_rows($ckpro) == 0) {
        echo('<script>alert(\'You must verify your personal profile to continue...\');</script>');
    } else {
        $ckdpro = dbi('1','SELECT * FROM user_driver WHERE aid = "'.$_SESSION['secact'].'"');
        if(mysqli_num_rows($ckdpro) == 0) {
            echo('<script>alert(\'You must setup your driver profile to continue...\');</script>');
        } else {
            dbi('1','UPDATE user_driver SET dkey = "'.$dvkey.'" WHERE aid = "'.$_SESSION['secact'].'"');
            $message = "Click the link below to verify your account information and run your background check. You will be charged $99 dollars to verify and credit card verification is set to exact match of your billing address and name.";
            $message = wordwrap($message, 70, "\r\n");
            mail($_SESSION['bemail'], 'Verification Link', $message.' https://idrivezero.com/index.php?p=dverify&v='.$dvkey.'');
        }
    }
}

$statOptions = array(
    array("id"=>"0","option"=>"minute"),
    array("id"=>"1","option"=>"hour"),
    array("id"=>"2","option"=>"delivery")
    
);
$statCount = count($statOptions);
$optBuild = '';
for($i=0;$i<$statCount;$i++) {
    if($statOptions[$i]['id'] == $_SESSION['dper']) {
        $optBuild .= '<option value="'.$statOptions[$i]['id'].'" selected>'.ucwords($statOptions[$i]['option']).'</option>';
    } else {
        $optBuild .= '<option value="'.$statOptions[$i]['id'].'">'.ucwords($statOptions[$i]['option']).'</option>';
    }
}
$ssni = strlen($_SESSION['ssn']);
$ssnd = '*******'.substr($_SESSION['ssn'],$ssni-2,$ssni);
$dldi = strlen($_SESSION['dl']);
$dldd = '*******'.substr($_SESSION['dl'],$dldi-2,$dldi);
$form8 = array(//array('element'=>'', 'name'=>'', 'value'=>'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
    array('element'=>'pform', 'name'=>'userDriver', 'value'=>'./www-cgi/drive.php', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
    array('element'=>'tinput', 'name'=>'ssn', 'value'=>$ssnd, 'js'=>'', 'text'=>'SSN:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'dl', 'value'=>$dldd, 'js'=>'', 'text'=>'License #:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'make', 'value'=>$_SESSION['make'], 'js'=>'', 'text'=>'Make:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'model', 'value'=>$_SESSION['model'], 'js'=>'', 'text'=>'Model:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'year', 'value'=>$_SESSION['year'], 'js'=>'', 'text'=>'Year:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'insurance_policy', 'value'=>$_SESSION['insurance_policy'], 'js'=>'', 'text'=>'Policy #:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'insurance_provider', 'value'=>$_SESSION['insurance_provider'], 'js'=>'', 'text'=>'Provider:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'dzip', 'value'=>$_SESSION['dzip'], 'js'=>'', 'text'=>'Drive in Zip:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'drate', 'value'=>$_SESSION['drate'], 'js'=>'', 'text'=>'Rate:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'select', 'name'=>'dper', 'value'=>$optBuild, 'js'=>'', 'text'=>'Per:', 'size'=>'', 'style'=>'width: 215px;'),
    array('element'=>'sinput', 'name'=>'userDriverSubmit', 'value'=>'update', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
);
$statOptions2 = array(
    array("id"=>"0","option"=>"Off-Duty"),
    array("id"=>"1","option"=>"On-Duty"),
    array("id"=>"2","option"=>"On-Duty In-Transit")
    
);
$statCount2 = count($statOptions2);
$optBuild2 = '';
for($i=0;$i<$statCount2;$i++) {
    if($statOptions2[$i]['id'] == $_SESSION['dac']) {
        $optBuild2 .= '<option value="'.$statOptions2[$i]['id'].'" selected>'.ucwords($statOptions2[$i]['option']).'</option>';
    } else {
        $optBuild2 .= '<option value="'.$statOptions2[$i]['id'].'">'.ucwords($statOptions2[$i]['option']).'</option>';
    }
}
$form81 = array(//array('element'=>'', 'name'=>'', 'value'=>'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
    array('element'=>'pform', 'name'=>'userDriverStatus', 'value'=>'./www-cgi/drive.php', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
    array('element'=>'select', 'name'=>'dac', 'value'=>$optBuild2, 'js'=>'', 'text'=>'Status:', 'size'=>'', 'style'=>'width: 215px;'),
    array('element'=>'sinput', 'name'=>'userDriverStatusSubmit', 'value'=>'update', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
);

if($_SESSION['dverified'] == 0) {
    if($_SESSION['dpl'] == 0) {
        echo('<div id="dinfo" style="display: none;"><span class="f_arial12">'.dbq('9',$_SESSION['ciri'].'To become a driver we need to verify your information and run a background check for $99 dollars. Would you like to verify now?', $_SESSION['secact']).'</span></div>');
    } elseif($_SESSION['dpl'] == 1) {
        echo('<div id="dinfo" style="display: none;"><span class="f_arial12">'.dbq('9',$_SESSION['ciri'].'A verification link was sent to '.$_SESSION['email'].'. Do you need it resent?', $_SESSION['secact']).'</span></div>');
    }
    echo('<div><span class="c_ff0000">');
    echo('<span class="f_arial12">⚠️ You must complete the following information and submit your application for approval, it costs $99 dollars. Name your own price per minute, per hour or per delivery, start making money today!</span>');
    echo('</span></div>');
} else {
    $ms = 86400*365;
    $ex = $_SESSION['dvstart']+$ms;
    echo('<div id="dinfo" style="display: none;"><span class="f_arial12"> Your verification is valid until '.date("m/d/Y", $ex).'</span></div>');
}

if($_SESSION['dverified'] == 1) {
    echo('<h4>In-coming Rides:</h4>');
    
    $qo = dbi('1','SELECT * FROM user_rides WHERE user_rides.driver = "'.$_SESSION['secact'].'"');
    
    if(mysqli_num_rows($qo) > 0) {
        echo('<table border="0" cellpadding="0" cellspacing="1" width="100%">');
        echo('<tr style="color: #000000; background-color: #999999;"><td>Pickup @:</td><td>Deliver @:</td><td>Book:</td></tr>');
        while($row_qo = mysqli_fetch_array($qo)) {
            echo('<tr><td>');
            echo($row_qo['padd1'].', '.$row_qo['pcity'].', '.$row_qo['pstate'].', '.$row_qo['pzip']);
            echo('</td>');
            echo('<td>');
            echo($row_qo['dadd1'].', '.$row_qo['dcity'].', '.$row_qo['dstate'].', '.$row_qo['dzip']);
            echo('</td>');
            echo('<td>');
            $ajaxItem = ('
    						$("#bookDriver'.$row_qo[rid].'").on("submit",  function(e){
    							e.preventDefault();
    							$.ajax({
    								data: $(this).serialize(),
    								type: $(this).attr("method"),
    								url: $(this).attr("action"),
    								success: function(response) {
    									$("#drive").html(response);
    								}
    							});
    							$("#bookDriver'.$row_qo[rid].'").unbind(this.submit);
    							return false;
    						});
    						$("#cancelDriver'.$row_qo[rid].'").on("submit",  function(e){
    							e.preventDefault();
    							$.ajax({
    								data: $(this).serialize(),
    								type: $(this).attr("method"),
    								url: $(this).attr("action"),
    								success: function(response) {
    									$("#drive").html(response);
    								}
    							});
    							$("#cancelDriver'.$row_qo[rid].'").unbind(this.submit);
    							return false;
    						});
                ');
            $ajaxItem = str_replace(array("\t","\n","\r"),"",$ajaxItem);
            echo('<script>'.$ajaxItem.'</script>');
            $formBook = array(
                array('element'=>'pform', 'name'=>'bookDriver'.$row_qo['rid'].'', 'value'=>'./www-cgi/drive.php', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
                array('element'=>'hinput', 'name'=>'book', 'value'=>$row_qo['rid'], 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
                array('element'=>'sinput', 'name'=>'bookDriverSubmit', 'value'=>'book', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
            );
            $formCancel = array(
                array('element'=>'pform', 'name'=>'cancelDriver'.$row_qo['rid'].'', 'value'=>'./www-cgi/drive.php', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
                array('element'=>'hinput', 'name'=>'cancel', 'value'=>$row_qo['rid'], 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
                array('element'=>'sinput', 'name'=>'cancelDriverSubmit', 'value'=>'cancel', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
            );
            if($_SESSION['secact'] == $row_qo['driver'] && $row_qo['dstatus'] == 1) {
                echo(form($formBook));
            } else {
                echo(form($formCancel));
            }
            echo('</td></tr>');
        }
        echo('</table>');
    } else {
        if($_SESSION['dac'] == 0) {
            echo('Off-Duty...');
        } elseif($_SESSION['dac'] == 1) {
            echo('<img src="./www-img/process.gif" width="13" height="13">Accepting...');
        } elseif($_SESSION['dac'] == 2) {
            echo('In-Transit...');
        }
    }
    
    echo('<h4>In-coming Deliveries:</h4>');
    
    $qh = dbi('1','SELECT * FROM user_business_orders WHERE user_business_orders.driver = "'.$_SESSION['secact'].'"');
    
    if(mysqli_num_rows($qh) > 0) {
    echo('<table border="0" cellpadding="0" cellspacing="1" width="100%">');
    echo('<tr style="color: #000000; background-color: #999999;"><td>Order ID:</td><td>1st Item:</td><td>Total Price:</td><td>Details:</td><td>Book:</td></tr>');
    while($row_qh = mysqli_fetch_array($qh)) {
        $oidlen = strlen($row_qh['oid']);
        echo('<tr><td>'.substr($row_qh['oid'],$oidlen-6,$oidlen).'</td>');
        echo('<td>'.$row_qh['item'].'</td>');
        echo('<td>'.$row_qh['total'].'</td>');
        echo('<td>');
        echo('<a href="javascript:;" style="text-decoration: none;" onclick="orderDetails(\''.$row_qh['oid'].'\');"><img src="./www-img/zoom.png" width="25" height="25"></a>');
        echo('</td>');
        echo('<td style="text-align: center;">');
        $ajaxItem = ('
    						$("#bookDriverB'.$row_qh[oid].'").on("submit",  function(e){
    							e.preventDefault();
    							$.ajax({
    								data: $(this).serialize(),
    								type: $(this).attr("method"),
    								url: $(this).attr("action"),
    								success: function(response) {
    									$("#drive").html(response);
    								}
    							});
    							$("#bookDriverB'.$row_qh[oid].'").unbind(this.submit);
    							return false;
    						});
    						$("#cancelDriverB'.$row_qh[oid].'").on("submit",  function(e){
    							e.preventDefault();
    							$.ajax({
    								data: $(this).serialize(),
    								type: $(this).attr("method"),
    								url: $(this).attr("action"),
    								success: function(response) {
    									$("#drive").html(response);
    								}
    							});
    							$("#cancelDriverB'.$row_qh[oid].'").unbind(this.submit);
    							return false;
    						});
                ');
        $ajaxItem = str_replace(array("\t","\n","\r"),"",$ajaxItem);
        echo('<script>'.$ajaxItem.'</script>');
        $formBook = array(
            array('element'=>'pform', 'name'=>'bookDriverB'.$row_qh['oid'].'', 'value'=>'./www-cgi/drive.php', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'hinput', 'name'=>'bookB', 'value'=>$row_qh['oid'], 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
            array('element'=>'sinput', 'name'=>'bookDriverSubmitB', 'value'=>'book', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
        );
        $formCancel = array(
            array('element'=>'pform', 'name'=>'cancelDriverB'.$row_qh['oid'].'', 'value'=>'./www-cgi/drive.php', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'hinput', 'name'=>'cancelB', 'value'=>$row_qh['oid'], 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
            array('element'=>'sinput', 'name'=>'cancelDriverSubmitB', 'value'=>'cancel', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
        );
        if($_SESSION['secact'] == $row_qh['driver'] && $row_qh['dstatus'] == 1) {
            echo(form($formBook));
        } else {
            echo(form($formCancel));
        }
        echo('</td></tr>');
    }
    echo('</table>');
    } else {
        if($_SESSION['dac'] == 0) {
            echo('Off-Duty...');
        } elseif($_SESSION['dac'] == 1) {
            echo('<img src="./www-img/process.gif" width="13" height="13">Accepting...');
        } elseif($_SESSION['dac'] == 2) {
            echo('In-Transit...');
        }
    }
    for($i=0;$i<5;$i++) {
        echo('<br>');
    }
    echo(form($form81));
}
if($_SESSION['dverified'] == 1) {
    $ddisable = ('
                $(document).ready(function() {
                    var form  = document.getElementById("userDriver");
                    var allElements = form.elements;
                    for (var i = 0, l = allElements.length; i < l; ++i) {
                        allElements[i].disabled=true;
                    }
                    document.getElementById(\'userDriverSubmit\').value="verified";
                });
            ');
    $ddisable = str_replace(array("\t","\n","\r"),"",$ddisable);
    echo('<script>'.$ddisable.'</script>');
}
echo(form($form8));
?>