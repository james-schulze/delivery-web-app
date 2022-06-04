<?php
@session_start();
if(!isset($_SESSION['seclvl']) || $_SESSION['seclvl'] != 1) {
    header('Location:./');
}
?>