<?php
@session_start();
echo('<a href="./?logout=1" title="Logout"><div class="navImage20" style="background: url(./www-img/power1.png) no-repeat center; background-size: cover;"></div></a>');
echo('<a href="" onclick="tprofile(\'1\');" style="cursor: pointer;" title="Profile"><div class="navImage20" style="background: url('.$_SESSION['pic'].') no-repeat center; background-size: cover;"></div></a>');
echo('<a href="" onclick="tprofile(\'3\');" style="cursor: pointer;" title="Drivers"><div class="navImage20" style="background: url(./www-img/driving1.jpg) no-repeat center; background-size: cover;"><div class="alert" id="alertDrive"></div></div></a>');
echo('<a href="" onclick="tprofile(\'4\');" style="cursor: pointer;" title="Order History"><div class="navImage20" style="background: url(./www-img/history2.jpg) no-repeat center; background-size: cover;"><div class="alert" id="alertHistory"></div></div></a>');
echo('<a href="" onclick="tprofile(\'2\');" style="cursor: pointer;" title="Your Business"><div class="navImage20" style="background: url(./www-img/business1.jpg) no-repeat center; background-size: cover;"></div></a>');
echo('<a href="" onclick="tprofile(\'5\');" style="cursor: pointer;" title="Advertise"><div class="navImage20" style="background: url(./www-img/advertise1.png) no-repeat center; background-size: cover;"></div></a>');
echo('<a href="" onclick="tprofile(\'6\');" style="cursor: pointer;" title="Business Orders"><div class="navImage20" style="background: url(./www-img/register1.jpg) no-repeat center; background-size: cover;"><div class="alert" id="alertBiz"></div></div></a>');
echo('<a href="" onclick="tprofile(\'8\');" style="cursor: pointer;" title="Merchant Account"><div class="navImage20" style="background: url(./www-img/merchant3.jpg) no-repeat center; background-size: cover;"></div></a>');
echo('<a href="" onclick="tprofile(\'7\');" style="cursor: pointer;" title="Request Ride"><div class="navImage20" style="background: url(./www-img/limo3.jpg) no-repeat center; background-size: cover;"></div></a>');
echo('<div class="navImage20" style="background: url(./www-img/soon1.jpg) no-repeat center; background-size: cover;"></div>');
echo('<a href="" onclick="tprofile(\'9\');" style="cursor: pointer;" title="Settings"><div class="navImage20" style="background: url(./www-img/gears2.gif) no-repeat center; background-size: cover;"></div></a>');
echo('<a href="" onclick="tprofile(\'11\');" style="cursor: pointer;" title="Help"><div class="navImage20" style="background: url(./www-img/help1.jpg) no-repeat center; background-size: cover;"></div></a>');
?>