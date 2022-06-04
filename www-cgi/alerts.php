<?php
@session_start();
include('./auth.php');
include('./database.php');
$dAlert = array("dalerts","dlast","dseen","balerts","blast","bseen","audio","halerts","hlast","hseen");
foreach($dAlert as $var) {
    if(!isset($_SESSION[$var])) {
        $_SESSION[$var] = 0;
    }
}

$totalAlerts = 0;

//DRIVE
$qa = dbi('1','SELECT COUNT(*) FROM user_rides WHERE driver = "'.$_SESSION['secact'].'"');
$qb = dbi('1','SELECT COUNT(*) FROM user_business_orders WHERE driver = "'.$_SESSION['secact'].'"');
$rides_qa = mysqli_fetch_row($qa);
$rides_qb = mysqli_fetch_row($qb);
$_SESSION['dalerts'] = $rides_qa['0']+$rides_qb['0'];
$totalAlerts = $totalAlerts+$_SESSION['dalerts'];
if($_SESSION['dalerts'] != $_SESSION['dlast']) {
    $_SESSION['dlast'] = $_SESSION['dalerts'];
    $_SESSION['dseen'] = 0;
    $_SESSION['audio'] = 0;
}
if($_SESSION['dalerts'] > 0 && $_SESSION['dseen'] == 0) {
    $dalert = ('
        $(document).ready(function() {
            $("#alertDrive").css("display","table-cell");
            $("#alertDrive").html("'.$_SESSION['dalerts'].'");
        });
    ');
    $dalert = str_replace(array("\t","\n","\r"),"",$dalert);
    echo('<script>'.$dalert.'</script>');
} else {
    $dalert = ('
        $(document).ready(function() {
            $("#alertDrive").css("display","none");
        });
    ');
    $dalert = str_replace(array("\t","\n","\r"),"",$dalert);
    echo('<script>'.$dalert.'</script>');
}

//HIZ
$qd = dbi('1','SELECT COUNT(DISTINCT(bid)) FROM user_cart WHERE aid = "'.$_SESSION['secact'].'"');
$qe = dbi('1','SELECT COUNT(*) FROM user_business_orders WHERE user_business_orders.aid = "'.$_SESSION['secact'].'" AND user_business_orders.completed < 4');
$hiz_qd = mysqli_fetch_row($qd);
$hiz_qe = mysqli_fetch_row($qe);
$_SESSION['halerts'] = $hiz_qd['0']+$hiz_qe['0'];
$totalAlerts = $totalAlerts+$_SESSION['halerts'];
if($_SESSION['halerts'] != $_SESSION['hlast']) {
    $_SESSION['hlast'] = $_SESSION['halerts'];
    $_SESSION['hseen'] = 0;
    $_SESSION['audio'] = 0;
}
if($_SESSION['halerts'] > 0 && $_SESSION['hseen'] == 0) {
    $alert = ('
        $(document).ready(function() {
            $("#alertHistory").css("display","table-cell");
            $("#alertHistory").html("'.$_SESSION['halerts'].'");
        });
    ');
    $alert = str_replace(array("\t","\n","\r"),"",$alert);
    echo('<script>'.$alert.'</script>');
} else {
    $alert = ('
        $(document).ready(function() {
            $("#alertHistory").css("display","none");
        });
    ');
    $alert = str_replace(array("\t","\n","\r"),"",$alert);
    echo('<script>'.$alert.'</script>');
}

//BIZ
$qc = dbi('1','SELECT COUNT(*) FROM user_business_orders WHERE bid = "'.$_SESSION['bid'].'" AND user_business_orders.completed < 4');
$biz_qc = mysqli_fetch_row($qc);
$_SESSION['balerts'] = $biz_qc['0'];
$totalAlerts = $totalAlerts+$_SESSION['balerts'];
if($_SESSION['balerts'] != $_SESSION['blast']) {
    $_SESSION['blast'] = $_SESSION['balerts'];
    $_SESSION['bseen'] = 0;
    $_SESSION['audio'] = 0;
}
if($_SESSION['balerts'] > 0 && $_SESSION['bseen'] == 0) {
    $alert = ('
        $(document).ready(function() {
            $("#alertBiz").css("display","table-cell");
            $("#alertBiz").html("'.$_SESSION['balerts'].'");
        });
    ');
    $alert = str_replace(array("\t","\n","\r"),"",$alert);
    echo('<script>'.$alert.'</script>');
} else {
    $alert = ('
        $(document).ready(function() {
            $("#alertBiz").css("display","none");
        });
    ');
    $alert = str_replace(array("\t","\n","\r"),"",$alert);
    echo('<script>'.$alert.'</script>');
}

//AUDIO

if($totalAlerts > 0 && $_SESSION['audio'] == 0) {
    $alert = ('
        $(document).ready(function() {
            var chime = new Audio(\'./www-cgi/chime1.mp3\');
            chime.play();
        });
    ');
    $alert = str_replace(array("\t","\n","\r"),"",$alert);
    echo('<script>'.$alert.'</script>');
}

?>