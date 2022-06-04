<?php
@session_start();
$scrName = str_replace(" ","+",$_SESSION['screenName']);
echo('<h3><span class="c_ffffff"">Welcome back <a href="./index.php?p=profile&c='.$scrName.'" style="color: #0000EE;" target="_blank">'.$_SESSION['secali'].'</a>,</span></h3>');
?>