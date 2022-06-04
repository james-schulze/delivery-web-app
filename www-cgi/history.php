<?php
@session_start();
include('./database.php');
if(isset($_SESSION['bseen'])) {
    $_SESSION['hseen'] = 1;
}
if(isset($_SESSION['audio'])) {
    $_SESSION['audio'] = 1;
}

echo('<h4>Active Orders:</h4>');

$qn = dbi('1','SELECT * FROM user_cart WHERE aid = "'.$_SESSION['secact'].'" GROUP BY bid');
$qo = dbi('1','SELECT * FROM user_business_orders WHERE user_business_orders.aid = "'.$_SESSION['secact'].'" AND user_business_orders.completed < 4');

echo('<table border="0" cellpadding="0" cellspacing="1" width="100%">');
echo('<tr style="color: #000000; background-color: #999999;"><td>Order ID:</td><td>1st Item:</td><td>Item Count:</td><td>Total Price:</td><td>Details:</td></tr>');
while($row_qn = mysqli_fetch_array($qn)) {
    $iidlen = strlen($row_qn['iid']);
    echo('<tr><td>'.substr($row_qn['iid'],$iidlen-6,$iidlen).'</td><td>'.$row_qn['item'].'</td><td>'.$row_qn['qnty'].'</td><td>'.$row_qn['price'].'</td><td style="text-align: center;"><a href="./index.php?p=business&c='.$row_qn['bid'].'" style="text-decoration: none;"><img src="./www-img/zoom.png" width="25" height="25"></a></td></tr>');
}

while($row_qo = mysqli_fetch_array($qo)) {
    $oidlen = strlen($row_qo['oid']);
    echo('<tr><td>'.substr($row_qo['oid'],$oidlen-6,$oidlen).'</td><td>'.$row_qo['item'].'</td><td>'.$row_qo['item_count'].'</td><td>'.$row_qo['total'].'</td><td style="text-align: center;"><a href="javascript:;" style="text-decoration: none;" onclick="orderDetails(\''.$row_qo['oid'].'\');"><img src="./www-img/zoom.png" width="25" height="25"></a></td></tr>');
}

echo('</table>');

echo('<h4>Order History:</h4>');

$qh = dbi('1','SELECT * FROM user_business_orders WHERE user_business_orders.aid = "'.$_SESSION['secact'].'" AND user_business_orders.completed > 4');

echo('<table border="0" cellpadding="0" cellspacing="1" width="100%">');
echo('<tr style="color: #000000; background-color: #999999;"><td>Order ID:</td><td>1st Item:</td><td>Item Count:</td><td>Total Price:</td><td>Details:</td></tr>');
while($row_qh = mysqli_fetch_array($qh)) {
    $oidlen = strlen($row_qh['oid']);
    echo('<tr><td>'.substr($row_qh['oid'],$oidlen-6,$oidlen).'</td><td>'.$row_qh['item'].'</td><td>'.$row_qh['item_count'].'</td><td>'.$row_qh['total'].'</td><td style="text-align: center;"><a href="javascript:;" style="text-decoration: none;" onclick="orderDetails(\''.$row_qh['oid'].'\');"><img src="./www-img/zoom.png" width="25" height="25"></a></td></tr>');
}
echo('</table>');
?>