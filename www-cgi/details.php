<?php
@session_start();
$c = htmlentities($_REQUEST['c'], ENT_QUOTES, 'UTF-8');
include('auth.php');
include('./database.php');
include('./forms.php');
include('./dbq.php');
$css = ('
div.profileImage20 {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
	width: 20px;
	height: 20px;
	top: 0px;
	-webkit-opacity: 0.8;
	-moz-opacity: 0.8;
	-o-opacity: 0.8;
	opacity: 0.8;
	-o-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
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
	$(document).ready(function() { 
		$(\'input[name=dbq5]\').change(function(){
	    	$("#postDbq5").submit();
		});
		$(\'input[name=dbq6]\').change(function(){
	    	$("#postDbq6").submit();
		});
		$(\'input[name=dbq7]\').change(function(){
	    	$("#postDbq7").submit();
		});
	});
    function selectBdr() {
        $("#userBdr").submit();
    };
    function orderDetails(oid) {
        event.preventDefault();
        $("#page").load("./www-cgi/account.php");
        $("#response").toggle();
        $("#response").load("./www-cgi/details.php?c="+oid);
        return false;
    };
	$("#updateStatus").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#response").html(response);
			}
		});
		$("#updateStatus").unbind(this.submit);
		return false;
	});
	$("#postDbq5").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#response").html(response);
			}
		});
		$("#postDbq5").unbind(this.submit);
		return false;
	});
	$("#postDbq6").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#response").html(response);
			}
		});
		$("#postDbq6").unbind(this.submit);
		return false;
	});
	$("#postDbq7").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#response").html(response);
			}
		});
		$("#postDbq7").unbind(this.submit);
		return false;
	});
	$("#userBdr").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#response").html(response);
			}
		});
		$("#userBdr").unbind(this.submit);
		return false;
	});
');
$css = str_replace(array("\t","\n","\r"),"",$css);
$scripts = str_replace(array("\t","\n","\r"),"",$scripts);
echo('<style>'.$css.'</style>');
echo('<script>'.$scripts.'</script>');

if($_SESSION['seclvl'] == '1') {
    
    if(isset($_POST['bdr'])) {
        $bdr = htmlentities($_POST['bdr'], ENT_QUOTES, 'UTF-8');
        dbi('1','UPDATE user_business SET bdr = "'.$bdr.'" WHERE bid = "'.$_SESSION['bid'].'" AND aid = "'.$_SESSION['secact'].'"');
    }
    if(isset($_POST['dbq5'])) {
        $dbq5 = htmlentities($_POST['dbq5'], ENT_QUOTES, 'UTF-8');
        if($dbq5 == 1) {
            $_SESSION['dac'] = 2;
            dbi('1','UPDATE user_driver SET dac = 2 WHERE did = "'.$_SESSION['did'].'" AND aid = "'.$_SESSION['secact'].'"');
            dbi('1','UPDATE user_business_orders SET dstatus = 1 where driver = "'.$_SESSION['did'].'"');
        } elseif($dbq5 == 2) {
            dbi('1','UPDATE user_business_orders SET dstatus = 2 where driver = "'.$_SESSION['did'].'"');
        }
    }
    if(isset($_POST['dbq6'])) {
        $dbq6 = htmlentities($_POST['dbq6'], ENT_QUOTES, 'UTF-8');
        if($dbq6 == 1) {
            dbi('1','UPDATE user_business_orders SET dstatus = 2 where driver = "'.$_SESSION['did'].'"');
        } elseif($dbq6 == 2) {
            dbi('1','UPDATE user_business_orders SET dstatus = 1 where driver = "'.$_SESSION['did'].'"');
        }
    }
    if(isset($_POST['dbq7'])) {
        $dbq7 = htmlentities($_POST['dbq7'], ENT_QUOTES, 'UTF-8');
        if($dbq7 == 1) {
            $_SESSION['dac'] = 1;
            dbi('1','UPDATE user_driver SET dac = 1 WHERE did = "'.$_SESSION['did'].'" AND aid = "'.$_SESSION['secact'].'"');
            dbi('1','UPDATE user_business_orders SET driver = NULL, dstatus = 0 where driver = "'.$_SESSION['did'].'"');
            $qj = dbi('1','SELECT user_driver.dra FROM user_driver WHERE did = "'.$_SESSION['did'].'"');
            while($row_qj = mysqli_fetch_array($qj)) {
                $dra = $row_qj['dra'];
            }
            $dra--;
            dbi('1','UPDATE user_driver SET dra = "'.$dra.'" WHERE did = "'.$_SESSION['did'].'"');
        } elseif($dbq7 == 2) {
            dbi('1','UPDATE user_business_orders SET dstatus = 1 where driver = "'.$_SESSION['did'].'"');
        }
    }
    if(isset($_POST['oid'])) {
        $oid = htmlentities($_POST['oid'], ENT_QUOTES, 'UTF-8');
        $status = htmlentities($_POST['status'], ENT_QUOTES, 'UTF-8');
        dbi('1','UPDATE user_business_orders SET completed = "'.$status.'" WHERE oid = "'.$oid.'" AND bid = "'.$_SESSION['bid'].'"');
    }    
    if(isset($_POST['book'])) {
        $book = htmlentities($_POST['book'], ENT_QUOTES, 'UTF-8');
        $oid = htmlentities($_POST['oid'], ENT_QUOTES, 'UTF-8');
        $bid = htmlentities($_POST['bid'], ENT_QUOTES, 'UTF-8');
        dbi('1','UPDATE user_business_orders SET driver = "'.$book.'", dstatus = "1" WHERE oid = "'.$oid.'" AND bid = "'.$bid.'"');
    }
    if(isset($_POST['cancel'])) {
        $oid = htmlentities($_POST['oid'], ENT_QUOTES, 'UTF-8');
        $bid = htmlentities($_POST['bid'], ENT_QUOTES, 'UTF-8');
        dbi('1','UPDATE user_business_orders SET driver = NULL, dstatus = NULL WHERE oid = "'.$oid.'" AND bid = "'.$bid.'"');
    }
    
    $getBizOrder = dbi('1','SELECT * FROM user_business_orders WHERE user_business_orders.oid = "'.$c.'" LIMIT 1');
    while($row_getBizOrder = mysqli_fetch_array($getBizOrder)) {
        $driver = $row_getBizOrder['driver'];
        $dstatus = $row_getBizOrder['dstatus'];
        $total = $row_getBizOrder['total'];
        $btax = $row_getBizOrder['tax'];
        $completed = $row_getBizOrder['completed'];
    }
    
    echo('<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td style="text-align: left;"><h3>Order ID: '.$c.'</h3></td></tr></table>');
    
    $qi = dbi('1','SELECT * FROM user_business_orders WHERE user_business_orders.driver = "'.$_SESSION['did'].'"');
    
    $getOrder = dbi('1','SELECT * FROM user_cart_history WHERE user_cart_history.oid = "'.$c.'"');
    echo('<table border="0" cellpadding="1" cellspacing="1" width="100%">');
    echo('<tr style="color: #000000; background-color: #999999;"><td>Quantity:</td><td>Item:</td><td>Description:</td><td>Price:</td></tr>');
    while($row_getOrder = mysqli_fetch_array($getOrder)) {
        $bid = $row_getOrder['bid'];
        $aid = $row_getOrder['aid'];
        $iid = $row_getOrder['iid'];
        $oid = $row_getOrder['oid'];
        $item = $row_getOrder['item'];
        $description = $row_getOrder['description'];
        $price = $row_getOrder['price'];
        $qnty = $row_getOrder['qnty'];
        
        echo('<tr style="color: #000000; background-color: #CCCCCC;"><td style="text-align: center;">'.$qnty.'</td><td style="text-align: left;">'.$item.':</td><td style="text-align: left;">'.$description.'</td><td style="text-align: center;">'.$price.'</td></tr>');
        
        if($row_getOrder['sin'] != null) {
            echo('<tr><td colspan="5" style="background-color: #FFFF00;" align="left">'.$item.': '.$row_getOrder['sin'].'</td></tr>');
        }
        
    }
    echo('</table>');
    
    $getBiz = dbi('1','SELECT * FROM user_business WHERE user_business.bid = "'.$bid.'"');
    while($row_getBiz = mysqli_fetch_array($getBiz)) {
        if($row_getBiz['bppic'] == null) { $bppic = './www-img/topRated1.jpg'; } else { $bppic = $row_getBiz['bppic']; }
        $bdr = $row_getBiz['bdr'];
        $bemail = $row_getBiz['bemail'];
        $bverified = $row_getBiz['bverified'];
        $bname = $row_getBiz['bname'];
        $burl = $row_getBiz['burl'];
        $badd1 = $row_getBiz['badd1'];
        $badd2 = $row_getBiz['badd2'];
        $bcity = $row_getBiz['bcity'];
        $bstate = $row_getBiz['bstate'];
        $bzip = $row_getBiz['bzip'];
        $bphone = $row_getBiz['bphone'];
        $bfax = $row_getBiz['bfax'];
    }
    
    if(isset($_GET['d']) && $_GET['d'] == 'history' && $_SESSION['bid'] != $bid) {
        echo('<table border="0" cellpadding=00"0" cellspacing="0" width="100%"><tr><td width="95%" style="text-align: left;"><a href="javascript:;" onclick="historyDetails(\''.$c.'\');" style="color: #0000EE; text-decoration: none;"><span class="c_ff0000">❌</span> <i>'.$bname.' Order ID: '.$c.'</i></td><td width="5%"><div class="profileImage20" style="background: url('.$bppic.') no-repeat center; background-size: cover;"></div></a></td></tr></table>');
    } else {
        echo('<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td width="95%" style="text-align: left;"><a href="javascript:;" onclick="orderDetails(\''.$c.'\');" style="color: #0000EE; text-decoration: none;"><span class="c_ff0000">❌</span> <i>'.$bname.' Order ID: '.$c.'</i></td><td width="5%"><div class="profileImage20" style="background: url('.$bppic.') no-repeat center; background-size: cover;"></div></a></td></tr></table>');
    }
    
    $getBuyr = dbi('1','SELECT * FROM user_profile WHERE user_profile.aid = "'.$aid.'"');
    while($row_getBuyr = mysqli_fetch_array($getBuyr)) {
        $pic = $row_getBuyr['pic'];
        $ali = $row_getBuyr['ali'];
        $email = $row_getBuyr['email'];
        $verified = $row_getBuyr['verified'];
        $fname = $row_getBuyr['fname'];
        $lname = $row_getBuyr['lname'];
        $add1 = $row_getBuyr['add1'];
        $add2 = $row_getBuyr['add2'];
        $city = $row_getBuyr['city'];
        $state = $row_getBuyr['state'];
        $zip = $row_getBuyr['zip'];
        $phone = $row_getBuyr['phone'];
        
    }


    echo('<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr>');
    echo('<tr><td colspan="2" style="vertical-align: top; text-align: left";">');
    echo('<span class="c_000000">');
    echo('<span class="f_arail16"><span class="f_bold"><a href="'.$burl.'" target="_blank" style="color: #0000EE;">'.$bname.'</a></span></span><br>');
    echo('<span class="f_arial12"><span class="c_000000">'.$badd1.'</span></span>,');
    echo('<span class="f_arial12"><span class="c_000000">'.$badd2.'</span></span>,');
    echo('<span class="f_arial12"><span class="c_000000">'.$bcity.'</span></span>,');
    echo('<span class="f_arial12"><span class="c_000000">'.$bstate.'</span></span>,');
    echo('<span class="f_arial12"><span class="c_000000">'.$bzip.'</span></span><br>');
    echo('<span class="f_arial12"><span class="c_000000">P:<a href="tel:'.$tel.'" style="color: #000000;">'.$bphone.'</a></span></span><br>');
    echo('<span class="f_arial12"><span class="c_000000">F:'.$bfax.'</span></span><br>');
    echo('<span class="f_arial12"><span class="c_000000">E:<a href="mailto:'.$bemail.'" style="color: #000000;">'.$bemail.'</a></span></span><br>');
    echo('</span>');
    echo('</td></tr><tr><td width="40%" style="vertical-align: top;">');
    echo('<h3><div class="profileImage" style="background: url('.$bppic.') no-repeat center; background-size: cover;"></div>'.$bname.'</h3>');
    echo('</td><td width="45%" style="text-align: right; vertical-align: top;">');
    echo('<a href="javascript:;" style="padding: 0px 5px 0px 0px; cursor: pointer;" onclick="toggleCart(\''.$bid.'\');"><img src="./www-img/cart1.png" width="30" height="30"></a>');
    
    $dtotal = number_format($total,2,'.',',');
    echo('<span class="f_bold">sub total</span>:&nbsp;'.$dtotal.'<br>');
    $dbtax = number_format($btax,2,'.','.');
    echo('<span class="f_bold">tax</span>:&nbsp;'.$dbtax.'<br>');
    $ctotal = $dtotal+$dbtax;
    //$dctotal = number_format($ctotal,2,'.',',');
    echo('<span class="f_bold">total</span>:&nbsp;'.$ctotal.'<br>');
    
    echo('</td>');
    echo('</tr>');
    echo('<tr>');
    echo('<td style="vertical-align: top; text-align: left;" colspan="2">');
    echo('<span class="f_arial18"><span class="f_bold">Sell to:</span></span><br>');
    echo('<span class="c_000000">');
    $scrName = str_replace(" ","+",$ali);
    echo('<span class="f_arail16"><span class="f_bold"><a href="./index.php?p=profile&c='.$scrName.'" target="_blank" style="color: #0000EE;">'.$fname.'&nbsp;'.$lname.'</a></span></span><br>');
    echo('<span class="f_arial12"><span class="c_000000">'.$add1.'</span></span>,');
    echo('<span class="f_arial12"><span class="c_000000">'.$add2.'</span></span>,');
    echo('<span class="f_arial12"><span class="c_000000">'.$city.'</span></span>,');
    echo('<span class="f_arial12"><span class="c_000000">'.$state.'</span></span>,');
    echo('<span class="f_arial12"><span class="c_000000">'.$zip.'</span></span><br>');
    echo('<span class="f_arial12"><span class="c_000000">P:<a href="tel:'.$tel.'" style="color: #000000;">'.$phone.'</a></span></span><br>');
    echo('<span class="f_arial12"><span class="c_000000">E:<a href="mailto:'.$email.'" style="color: #000000;">'.$email.'</a></span></span><br>');
    echo('</span>');
    echo('</td>');
    echo('</tr>');
    echo('<tr>');
    echo('<td style="vertical-align: top; text-align: right;">');

    $statOptions = array(
        array("id"=>"0","option"=>"on-time"),
        array("id"=>"1","option"=>"in-transit"),
        array("id"=>"2","option"=>"delivered"),
        array("id"=>"3","option"=>"ready"),
        array("id"=>"4","option"=>"completed"),
        array("id"=>"5","option"=>"rejected")
    );
    $statCount = count($statOptions);
    $optBuild = '';
    for($i=0;$i<$statCount;$i++) {
        if($statOptions[$i]['id'] == $completed) {
            $optBuild .= '<option value="'.$statOptions[$i]['id'].'" selected>'.ucwords($statOptions[$i]['option']).'</option>';
        } else {
            $optBuild .= '<option value="'.$statOptions[$i]['id'].'">'.ucwords($statOptions[$i]['option']).'</option>';
        }
    }
    $formStatus = array(
        array('element'=>'pform', 'name'=>'updateStatus', 'value'=>'./www-cgi/details.php?c='.$c.'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
        array('element'=>'hinput', 'name'=>'oid', 'value'=>$c, 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
        array('element'=>'select', 'name'=>'status', 'value'=>$optBuild, 'js'=>'', 'text'=>'Status:', 'size'=>'', 'style'=>'width: 100%;'),
        array('element'=>'sinput', 'name'=>'postUpdateStatus', 'value'=>'update', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
    );
    $formLyft = array(
        array('element'=>'gform', 'name'=>'getDriver', 'value'=>'https://ride.lyft.com', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
        array('element'=>'hinput', 'name'=>'requestDriver', 'value'=>'yes', 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
        array('element'=>'sinput', 'name'=>'service', 'value'=>'Lyft', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
    );
    
    if($_SESSION['bid'] == $bid) {
        echo(form($formStatus));
        echo('<a href="https://ride.lyft.com" style="text-decoration: none; color: #0000EE;" target="_blank"><span class="f_arial11">Lyft available Pickup / Delivery</span></a>');
    }
    
    echo('</td>');
    echo('<td style="vertical-align: bottom; text-align: right;">');
    echo('<span class="f_arial_14"><span class="f_bold">Status:</span></span><br>');
    if($completed == 0) {
        echo('On-time');
    } elseif($completed == 1) {
        echo('In-transit');
    } elseif($completed == 2) {
        echo('Delivered');
    } elseif($completed == 3) {
        echo('Ready');
    } elseif($completed == 4) {
        echo('completed');
    } elseif($completed == 5) {
        echo('rejected');
    }
    echo('</td>');
    echo('</tr>');
    
    if($_SESSION['bid'] == $bid) {
    
        echo('<tr>');
        echo('<td style="vertical-align: top; text-align: left;" colspan="2">');
        
        $optBuild2 = '';
        for($i=99;$i>1;$i--) {
            if($i == $bdr) {
                $optBuild2 .= '<option value="'.$i.'" selected>'.$i.'</option>';
            } else {
                $optBuild2 .= '<option value="'.$i.'">'.$i.'</option>';
            }
        }
        $formBdr = array(//array('element'=>'', 'name'=>'', 'value'=>'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
            array('element'=>'pform', 'name'=>'userBdr', 'value'=>'./www-cgi/details.php?c='.$c.'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'select', 'name'=>'bdr', 'value'=>$optBuild2, 'js'=>'onchange="selectBdr();"', 'text'=>'', 'size'=>'', 'style'=>'width: 59px;')
        );
        echo('<span class="f_arial14"><span class="f_bold">');
        echo('<table border="0" cellpadding="0" cellspacing="0"><tr><td>Showing drivers with an approval rating of </td><td>'.form($formBdr).'</td><td> or better...</td></tr></table>');
        echo('</span></span>');
        $drivers = dbi('1','SELECT * FROM user_driver WHERE dzip = "'.$_SESSION['bzip'].'" AND dap = "1" AND dac = "1" AND dra >= "'.$bdr.'"');
        if(mysqli_num_rows($drivers) > 0) {
            //alias , make , model , rate , per
            echo('<table border="0" cellpadding="1" cellspacing="1" width="100%">');
            echo('<tr style="color: #000000; background-color: #999999;"><td>');
            echo('Driver');
            echo('</td><td>');
            echo('Vehicle');
            echo('</td><td>');
            echo('Rate');
            echo('</td><td>');
            echo('Request');
            echo('</td></tr>');
            while($row_drivers = mysqli_fetch_array($drivers)) {
                echo('<tr style="color: #000000; background-color: #CCCCCC;"><td>');
                $scrName = str_replace(" ","+",$row_drivers['scr']);
                echo('<a href="./index.php?p=profile&c='.$scrName.'" style="color: #0000EE;" target="_blank">'.$row_drivers['ali'].'</a>');
                echo('</td><td>');
                echo($row_drivers['year'].' '.$row_drivers['make'].' '.$row_drivers['model']);
                echo('</td><td>');
                echo($row_drivers['drate'].' Per ');
                if($row_drivers['dper'] == 0) {
                    echo('minute');
                } elseif($row_drivers['dper'] == 1) {
                    echo('hour');
                } elseif($row_drivers['dper'] == 2) {
                    echo('delivery');
                }
                echo('</td><td>');
                $ajaxItem = ('
    						$("#bookDriver'.$row_drivers[did].'").on("submit",  function(e){
    							e.preventDefault();
    							$.ajax({
    								data: $(this).serialize(),
    								type: $(this).attr("method"),
    								url: $(this).attr("action"),
    								success: function(response) {
    									$("#response").html(response);
    								}
    							});
    							$("#bookDriver'.$row_drivers[did].'").unbind(this.submit);
    							return false;
    						});
    						$("#cancelDriver'.$row_drivers[did].'").on("submit",  function(e){
    							e.preventDefault();
    							$.ajax({
    								data: $(this).serialize(),
    								type: $(this).attr("method"),
    								url: $(this).attr("action"),
    								success: function(response) {
    									$("#response").html(response);
    								}
    							});
    							$("#cancelDriver'.$row_drivers[did].'").unbind(this.submit);
    							return false;
    						});
                ');
                $ajaxItem = str_replace(array("\t","\n","\r"),"",$ajaxItem);
                echo('<script>'.$ajaxItem.'</script>');
                $formBook = array(
                    array('element'=>'pform', 'name'=>'bookDriver'.$row_drivers['did'].'', 'value'=>'./www-cgi/details.php?c='.$c.'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
                    array('element'=>'hinput', 'name'=>'book', 'value'=>$row_drivers['did'], 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
                    array('element'=>'hinput', 'name'=>'oid', 'value'=>$c, 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
                    array('element'=>'hinput', 'name'=>'bid', 'value'=>$bid, 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
                    array('element'=>'sinput', 'name'=>'bookDriverSubmit', 'value'=>'book', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
                );
                $formCancel = array(
                    array('element'=>'pform', 'name'=>'cancelDriver'.$row_drivers['did'].'', 'value'=>'./www-cgi/details.php?c='.$c.'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
                    array('element'=>'hinput', 'name'=>'cancel', 'value'=>$row_drivers['did'], 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
                    array('element'=>'hinput', 'name'=>'oid', 'value'=>$c, 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
                    array('element'=>'hinput', 'name'=>'bid', 'value'=>$bid, 'js'=>'', 'text'=>'', 'size'=>'199', 'style'=>''),
                    array('element'=>'sinput', 'name'=>'cancelDriverSubmit', 'value'=>'cancel', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
                );
                if($driver == $row_drivers['did']) {
                    echo(form($formCancel));
                } else {
                    echo(form($formBook));
                }
                echo('</td></tr>');
            }
            echo('</table>');
        } else {
            echo('<span class="f_arail14"><span class="c_ff0000">no drivers are currently available, please use Lyft...</span></span>');
        }
        
        echo('</td>');
        echo('</tr>');
    
    }
    
    echo('</table>');
    
    for($i=0;$i<9;$i++) {
        echo('<br>');
    }
    
}
?>