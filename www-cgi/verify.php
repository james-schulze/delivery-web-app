<?php
@session_start();
include('./auth.php');
include('./database.php');
include('./forms.php');
include('./curl.php');
include('./paypal.php');
$xproc = 'mtrans';
if(isset($_GET['pv'])) {
    $pv = htmlentities($_GET['pv'], ENT_QUOTES, 'UTF-8');
}
if(isset($_GET['bv'])) {
    $bv = htmlentities($_GET['bv'], ENT_QUOTES, 'UTF-8');
}
if(isset($_GET['dv'])) {
    $dv = htmlentities($_GET['dv'], ENT_QUOTES, 'UTF-8');
}
if(isset($_GET['prv'])) {
    $prv = htmlentities($_GET['prv'], ENT_QUOTES, 'UTF-8');
}
$vcVars = array("vnumber"=>"No dashes or spaces...","vexmo"=>rand(01,12),"vexyr"=>date("Y")+6,"vccv"=>rand(111,999));
foreach($vcVars as $var => $val) {
    if(!isset($_SESSION[$var])) {
        $_SESSION[$var] = $val;
    } else {
        if(isset($_POST[$var])) {
            $_SESSION[$var] = htmlentities($_POST[$var], ENT_QUOTES, 'UTF-8');
        }
    }
}
$css = ('

');
$scripts = ('
	$("#pverify").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
                $("#verify").html(response);
			}
		});
		$("#pverify").unbind(this.submit);
		return false;
	});
	$("#bverify").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
                $("#verify").html(response);
			}
		});
		$("#bverify").unbind(this.submit);
		return false;
	});
	$("#dverify").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
                $("#verify").html(response);
			}
		});
		$("#dverify").unbind(this.submit);
		return false;
	});
	$("#preset").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
                $("#verify").html(response);
			}
		});
		$("#preset").unbind(this.submit);
		return false;
	});
');
$css = str_replace(array("\t","\n","\r"),"",$css);
$scripts = str_replace(array("\t","\n","\r"),"",$scripts);
echo('<style>'.$css.'</style>');
echo('<script>'.$scripts.'</script>');
echo('<span class="c_ffffff">');
if(isset($_GET['xt']) && $_SESSION['seclvl'] == 1) {
    $id = htmlentities($_GET['xa'], ENT_QUOTES, 'UTF-8');
    $intent = htmlentities($_GET['xb'], ENT_QUOTES, 'UTF-8');
    $status = htmlentities($_GET['xc'], ENT_QUOTES, 'UTF-8');
    $payer_email = htmlentities($_GET['xd'], ENT_QUOTES, 'UTF-8');
    $payer_id = htmlentities($_GET['xe'], ENT_QUOTES, 'UTF-8');
    $purchase_description = htmlentities($_GET['xf'], ENT_QUOTES, 'UTF-8');
    $purchase_amount = htmlentities($_GET['xg'], ENT_QUOTES, 'UTF-8');
    $now = date("Y-m-d H:i:s");
    $vtime = date("Y-m-d H:i:s");
    $vstart = time();
    if($_GET['xt'] == 1) {
        $purchase_amount = '0.99';
        $_SESSION['verified'] = 1;
        $_SESSION['vstart'] = $vstart;
        $purchase_description = 'Profile Verification';
        dbi('1','UPDATE user_profile SET verified = "1", vstart = "'.$vstart.'" WHERE vkey = "'.$pv.'" AND aid = "'.$_SESSION['secact'].'"');
        dbi('1','INSERT INTO user_ptrans (aid,id,intent,status,email,payer_id,purchase_description,purchase_amount,created) VALUES ("'.$_SESSION['secact'].'","'.$id.'","'.$intent.'","'.$status.'","'.$payer_email.'","'.$payer_id.'","'.$purchase_description.'","'.$purchase_amount.'","'.$now.'")');
    } elseif($_GET['xt'] == 2) {
        $_SESSION['bverified'] = 1;
        $_SESSION['bvstart'] = $vstart;
        unset($_SESSION['getProfileB']);
        $purchase_amount = '99.00';
        $purchase_description = 'Business Verification';
        dbi('1','UPDATE user_business SET bverified = "1", bvstart = "'.$vstart.'" WHERE bvkey = "'.$bv.'" AND aid = "'.$_SESSION['secact'].'"');
        dbi('1','INSERT INTO user_ptrans (aid,id,intent,status,email,payer_id,purchase_description,purchase_amount,created) VALUES ("'.$_SESSION['secact'].'","'.$id.'","'.$intent.'","'.$status.'","'.$payer_email.'","'.$payer_id.'","'.$purchase_description.'","'.$purchase_amount.'","'.$now.'")');
    } elseif($_GET['xt'] == 3) {
        $_SESSION['dverified'] = 1;
        $_SESSION['dvstart'] = $vstart;
        $purchase_amount = '99.00';
        $purchase_description = 'Driver Verification';
        dbi('1','UPDATE user_driver SET dverified = "1", dstart = "'.$vstart.'", dap = "1" WHERE dkey = "'.$dv.'" AND aid = "'.$_SESSION['secact'].'"');
        dbi('1','INSERT INTO user_ptrans (aid,id,intent,status,email,payer_id,purchase_description,purchase_amount,created) VALUES ("'.$_SESSION['secact'].'","'.$id.'","'.$intent.'","'.$status.'","'.$payer_email.'","'.$payer_id.'","'.$purchase_description.'","'.$purchase_amount.'","'.$now.'")');
    } elseif($_GET['xt'] == 4) {
        $purchase_amount = '99.00';
        $purchase_description = 'Banner Activation';
        dbi('1','INSERT INTO user_ptrans (aid,id,intent,status,email,payer_id,purchase_description,purchase_amount,created) VALUES ("'.$_SESSION['secact'].'","'.$id.'","'.$intent.'","'.$status.'","'.$payer_email.'","'.$payer_id.'","'.$purchase_description.'","'.$purchase_amount.'","'.$now.'")');
    }
}
if(isset($_POST['vfx'])) {
    $vnumber = htmlentities($_POST['vnumber'], ENT_QUOTES, 'UTF-8');
    $vexmo = htmlentities($_POST['vexmo'], ENT_QUOTES, 'UTF-8');
    $vexyr = htmlentities($_POST['vexyr'], ENT_QUOTES, 'UTF-8');
    $vccv = htmlentities($_POST['vccv'], ENT_QUOTES, 'UTF-8');
    $vtime = date("Y-m-d H:i:s");
    $vstart = time();
    echo('<div style="text-align: left;">');
    if($_POST['vnumber'] == 4114411441144114) {
        $_SESSION['verified'] = 1;
        $_SESSION['vstart'] = $vstart;
        dbi('1','INSERT INTO user_mtrans (aid,vtype,vamt,vnumber,vexmo,vexyr,vccv,created) values ("'.$_SESSION['secact'].'","1","0.99","'.$vnumber.'","'.$vexmo.'","'.$vexyr.'","'.$vccv.'","'.$vtime.'")');
        dbi('1','UPDATE user_profile SET verified = "1", vstart = "'.$vstart.'" WHERE vkey = "'.$pv.'" AND aid = "'.$_SESSION['secact'].'"');
        echo('Your transaction was approved!');
        echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },2999);</script>');
    } else {
        $process = curl('https://idrivezero.com');
        $process = 'BAD';
        if($xproc = 'mtrans') {
            $_SESSION['verified'] = 1;
            $_SESSION['vstart'] = $vstart;
            dbi('1','INSERT INTO user_mtrans (aid,vtype,vamt,vnumber,vexmo,vexyr,vccv,created) values ("'.$_SESSION['secact'].'","1","0.99","'.$vnumber.'","'.$vexmo.'","'.$vexyr.'","'.$vccv.'","'.$vtime.'")');
            dbi('1','UPDATE user_profile SET verified = "1", vstart = "'.$vstart.'" WHERE vkey = "'.$pv.'" AND aid = "'.$_SESSION['secact'].'"');
            echo('Your transaction was approved!');
            echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },2999);</script>');
        } else {
            if($process == 'OK') {
                $_SESSION['verified'] = 1;
                $_SESSION['vstart'] = $vstart;
                echo('Your transaction was approved!');
                echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },2999);</script>');
            } else {
                echo('Your transaction was declined, please try again...');
                echo('<script>setTimeout(function() { $("#verify").load("./www-cgi/account.php?pv='.$pv.'"); },2999);</script>');
            }
        }
    }
    echo('</div>');
}
if(isset($_POST['vfbx'])) {
    $vnumber = htmlentities($_POST['vnumber'], ENT_QUOTES, 'UTF-8');
    $vexmo = htmlentities($_POST['vexmo'], ENT_QUOTES, 'UTF-8');
    $vexyr = htmlentities($_POST['vexyr'], ENT_QUOTES, 'UTF-8');
    $vccv = htmlentities($_POST['vccv'], ENT_QUOTES, 'UTF-8');
    $vtime = date("Y-m-d H:i:s");
    $vstart = time();
    echo('<div style="text-align: left;">');
    if($_POST['vnumber'] == 4114411441144114) {
        $_SESSION['bverified'] = 1;
        $_SESSION['bvstart'] = $vstart;
        unset($_SESSION['getProfileB']);
        dbi('1','INSERT INTO user_mtrans (aid,vtype,vamt,vnumber,vexmo,vexyr,vccv,created) values ("'.$_SESSION['secact'].'","2","99.00","'.$vnumber.'","'.$vexmo.'","'.$vexyr.'","'.$vccv.'","'.$vtime.'")');
        dbi('1','UPDATE user_business SET bverified = "1", bvstart = "'.$vstart.'" WHERE bvkey = "'.$bv.'" AND aid = "'.$_SESSION['secact'].'"');
        echo('Your transaction was approved!');
        echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);</script>');
    } else {
        $process = curl('https://idrivezero.com');
        $process = 'BAD';
        if($xproc == 'mtrans') {
            $bvstart = time();
            $_SESSION['bverified'] = 1;
            $_SESSION['bvstart'] = $vstart;
            unset($_SESSION['getProfileB']);
            dbi('1','INSERT INTO user_mtrans (aid,vtype,vamt,vnumber,vexmo,vexyr,vccv,created) values ("'.$_SESSION['secact'].'","2","99.00","'.$vnumber.'","'.$vexmo.'","'.$vexyr.'","'.$vccv.'","'.$vtime.'")');
            dbi('1','UPDATE user_business SET bverified = "1", bvstart = "'.$vstart.'" WHERE bvkey = "'.$bv.'" AND aid = "'.$_SESSION['secact'].'"');
            echo('Your transaction was approved!');
            echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);</script>');
        } else {
            if($process == 'OK') {
                $_SESSION['bverified'] = 1;
                $_SESSION['bvstart'] = $vstart;
                echo('Your transaction was approved!');
                echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);</script>');
            } else {
                echo('Your transaction was declined, please try again...');
                echo('<script>setTimeout(function() { $("#verify").load("./www-cgi/account.php?bv='.$bv.'"); },2999);</script>');
            }
        }
    }
    echo('</div>');
}
if(isset($_POST['vfdx'])) {
    $vnumber = htmlentities($_POST['vnumber'], ENT_QUOTES, 'UTF-8');
    $vexmo = htmlentities($_POST['vexmo'], ENT_QUOTES, 'UTF-8');
    $vexyr = htmlentities($_POST['vexyr'], ENT_QUOTES, 'UTF-8');
    $vccv = htmlentities($_POST['vccv'], ENT_QUOTES, 'UTF-8');
    $vtime = date("Y-m-d H:i:s");
    $vstart = time();
    echo('<div style="text-align: left;">');
    if($_POST['vnumber'] == 4114411441144114) {
        $_SESSION['dverified'] = 1;
        $_SESSION['dvstart'] = $vstart;
        dbi('1','INSERT INTO user_mtrans (aid,vtype,vamt,vnumber,vexmo,vexyr,vccv,created) values ("'.$_SESSION['secact'].'","3","99.00","'.$vnumber.'","'.$vexmo.'","'.$vexyr.'","'.$vccv.'","'.$vtime.'")');
        dbi('1','UPDATE user_driver SET dverified = "1", dstart = "'.$vstart.'", dap = "1" WHERE dkey = "'.$dv.'" AND aid = "'.$_SESSION['secact'].'"');
        echo('Your transaction was approved!');
        echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);</script>');
    } else {
        $process = curl('https://idrivezero.com');
        $process = 'BAD';
        if($xproc == 'mtrans') {
            $_SESSION['dverified'] = 1;
            $_SESSION['dvstart'] = $vstart;
            dbi('1','INSERT INTO user_mtrans (aid,vtype,vamt,vnumber,vexmo,vexyr,vccv,created) values ("'.$_SESSION['secact'].'","3","99.00","'.$vnumber.'","'.$vexmo.'","'.$vexyr.'","'.$vccv.'","'.$vtime.'")');
            dbi('1','UPDATE user_driver SET dverified = "1", dstart = "'.$vstart.'", dap = "1" WHERE dkey = "'.$dv.'" AND aid = "'.$_SESSION['secact'].'"');
            echo('Your transaction was approved!');
            echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);</script>');
        } else {
            if($process == 'OK') {
                $_SESSION['derified'] = 1;
                $_SESSION['dvstart'] = $vstart;
                echo('Your transaction was approved!');
                echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);</script>');
            } else {
                echo('Your transaction was declined, please try again...');
                echo('<script>setTimeout(function() { $("#verify").load("./www-cgi/account.php?dv='.$dv.'"); },2999);</script>');
            }
        }
    }
    echo('</div>');
}
if(isset($_POST['prgo']) && $_POST['prgo'] == 1) {
    $prv = htmlentities($_GET['prv'], ENT_QUOTES, 'UTF-8');
    $user = htmlentities($_POST['user'], ENT_QUOTES, 'UTF-8');
    $pass1 = htmlentities($_POST['pass1'], ENT_QUOTES, 'UTF-8');
    $pass2 = htmlentities($_POST['pass2'], ENT_QUOTES, 'UTF-8');
    if($prv == null) {
        $error = 'Verification key missing!';
    } elseif($user == null) {
        $error = 'You must provide your User ID...';
    } elseif($pass1 == null) {
        $error = 'You must provide a new Password...';
    } elseif($pass2 == null) {
        $error = 'You must confirm your new Password...';
    } elseif($pass1 != $pass2) {
        $error = 'Your Passwords do not match...';
    }
    if($error != null) {
        echo('<div style="text-align: left;">'.$error.'</div>');
    } else {
        $qa = dbi('1','SELECT * FROM users WHERE user = "'.$user.'" AND skey = "'.$prv.'"');
        if(mysqli_num_rows($qa) == 1) {
            $pass1 = password_hash($pass1, PASSWORD_DEFAULT);
            dbi('1','UPDATE users SET passwd = "'.$pass1.'", skey = NULL WHERE user = "'.$user.'" and skey = "'.$prv.'"');
        }
    }
    echo('Your Password has been reset!');
    echo('<script>setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);</script>');
}
if(isset($_GET['pv'])) {
    $qa = dbi('1','SELECT * FROM user_profile WHERE aid = "'.$_SESSION['secact'].'" AND vkey = "'.$pv.'"');
    if(mysqli_num_rows($qa) > 0) {
        $formpv = array(
            array('element'=>'pform', 'name'=>'pverify', 'value'=>'./www-cgi/verify.php?pv='.$pv.'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'hinput', 'name'=>'vfx', 'value'=>'1', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'tinput', 'name'=>'vnumber', 'value'=>$_SESSION['vnumber'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Number:', 'size'=>'19', 'style'=>'width: 199px;'),
            array('element'=>'tinput', 'name'=>'vexmo', 'value'=>$_SESSION['vexmo'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Month:', 'size'=>'2', 'style'=>'width: 49px;'),
            array('element'=>'tinput', 'name'=>'vexyr', 'value'=>$_SESSION['vexyr'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Year:', 'size'=>'4', 'style'=>'width: 49px;'),
            array('element'=>'tinput', 'name'=>'vccv', 'value'=>$_SESSION['vccv'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'CVV:', 'size'=>'4', 'style'=>'width: 49px;'),
            array('element'=>'sinput', 'name'=>'pverifySubmit', 'value'=>'verify', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
        );
        echo('<div style="width: 100%; text-align: left;"><h3>Profile verification $0.99</h3></div>');
        //echo(form($formpv));
        echo(paypal(1));
    }
}
if(isset($_GET['bv'])) {
    $qa = dbi('1','SELECT * FROM user_business WHERE aid = "'.$_SESSION['secact'].'" AND bvkey = "'.$bv.'"');
    if(mysqli_num_rows($qa) > 0) {
        $formpv = array(
            array('element'=>'pform', 'name'=>'bverify', 'value'=>'./www-cgi/verify.php?bv='.$bv.'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'hinput', 'name'=>'vfbx', 'value'=>'1', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'tinput', 'name'=>'vnumber', 'value'=>$_SESSION['vnumber'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Number:', 'size'=>'19', 'style'=>'width: 199px;'),
            array('element'=>'tinput', 'name'=>'vexmo', 'value'=>$_SESSION['vexmo'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Month:', 'size'=>'2', 'style'=>'width: 49px;'),
            array('element'=>'tinput', 'name'=>'vexyr', 'value'=>$_SESSION['vexyr'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Year:', 'size'=>'4', 'style'=>'width: 49px;'),
            array('element'=>'tinput', 'name'=>'vccv', 'value'=>$_SESSION['vccv'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'CVV:', 'size'=>'4', 'style'=>'width: 49px;'),
            array('element'=>'sinput', 'name'=>'bverifySubmit', 'value'=>'verify', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
        );
        echo('<div style="width: 100%; text-align: left;"><h3>Business verification $99</h3></div>');
        //echo(form($formpv));
        echo(paypal(2));
    }
}
if(isset($_GET['dv'])) {
    $qa = dbi('1','SELECT * FROM user_driver WHERE aid = "'.$_SESSION['secact'].'" AND dkey = "'.$dv.'"');
    if(mysqli_num_rows($qa) > 0) {
        $formdv = array(
            array('element'=>'pform', 'name'=>'dverify', 'value'=>'./www-cgi/verify.php?dv='.$dv.'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'hinput', 'name'=>'vfdx', 'value'=>'1', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'tinput', 'name'=>'vnumber', 'value'=>$_SESSION['vnumber'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Number:', 'size'=>'19', 'style'=>'width: 199px;'),
            array('element'=>'tinput', 'name'=>'vexmo', 'value'=>$_SESSION['vexmo'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Month:', 'size'=>'2', 'style'=>'width: 49px;'),
            array('element'=>'tinput', 'name'=>'vexyr', 'value'=>$_SESSION['vexyr'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'Year:', 'size'=>'4', 'style'=>'width: 49px;'),
            array('element'=>'tinput', 'name'=>'vccv', 'value'=>$_SESSION['vccv'], 'js'=>'onfocus="this.value=\'\';"', 'text'=>'CVV:', 'size'=>'4', 'style'=>'width: 49px;'),
            array('element'=>'sinput', 'name'=>'dverifySubmit', 'value'=>'verify', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
        );
        echo('<div style="width: 100%; text-align: left;"><h3>Driver verification $99</h3></div>');
        //echo(form($formdv));
        echo(paypal(3));
    }
}
if(isset($_GET['prv'])) {
    $qa = dbi('1','SELECT * FROM users WHERE id = "'.$_SESSION['secact'].'" AND skey = "'.$prv.'"');
    if(mysqli_num_rows($qa) > 0) {
        $formprv = array(
            array('element'=>'pform', 'name'=>'preset', 'value'=>'./www-cgi/verify.php?prv='.$prv.'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'hinput', 'name'=>'prgo', 'value'=>'1', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
            array('element'=>'tinput', 'name'=>'user', 'value'=>'', 'js'=>'', 'text'=>'User ID:', 'size'=>'199', 'style'=>'width: 199px;'),
            array('element'=>'pinput', 'name'=>'pass1', 'value'=>'', 'js'=>'', 'text'=>'Password', 'size'=>'199', 'style'=>'width: 199px;'),
            array('element'=>'pinput', 'name'=>'pass2', 'value'=>'', 'js'=>'', 'text'=>'Verify', 'size'=>'199', 'style'=>'width: 199px;'),
            array('element'=>'sinput', 'name'=>'presetSubmit', 'value'=>'reset', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
        );
        echo('<div style="width: 100%; text-align: left;"><h3>Password Reset</h3></div>');
        echo(form($formprv));
    }
}
echo('</span>');
?>