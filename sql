CREATE TABLE ads (
adi bigint(255) AUTO_INCREMENT PRIMARY KEY,
uid bigint(255),
ciri varchar(255),
url varchar(255),
imglnk1 varchar(255),
updated timestamp,
created datetime
);

CREATE TABLE adbuy (
adi bigint(255),
uid bigint(255),
response varchar(255),
start bigint(255),
end bigint(255),
updated timestamp,
created datetime
);

CREATE TABLE images (
aid bigint(255),
image1 blob,
image2 blob,
image3 blob,
image4 blob,
image5 blob
);

CREATE TABLE imglnk (
aid bigint(255),
imglnk1 varchar(255),
imglnk2 varchar(255),
imglnk3 varchar(255),
imglnk4 varchar(255),
imglnk5 varchar(255)
);

CREATE TABLE reviews (
aid bigint(255),
uid bigint(255),
sid bigint(255),
breview varchar(255),
sreview varchar(255),
updated timestamp,
created datetime
);

CREATE TABLE users (
id bigint(255) AUTO_INCREMENT PRIMARY KEY,
ip varchar(255),
log datetime,
user varchar(255),
ali varchar(255),
rev bigint(255),
passwd varchar(255),
skey varchar(255),
mtime bigint(255),
updated timestamp,
created datetime
);

CREATE TABLE user_business (
aid bigint(255),
bid bigint(255) AUTO_INCREMENT PRIMARY KEY,
bdr int(11) NOT NULL DEFAULT 80,
bpic varchar(255),
bppic varchar(255),
bpcat varchar(255) NOT NULL DEFAULT '#999999',
bpitm varchar(255) NOT NULL DEFAULT '#CCCCCC',
bpfnt varchar(255) NOT NULL DEFAULT '#000000',
bemail varchar(255),
bverified int(1),
bvkey varchar(255),
bvstart bigint(255),
bname varchar(255),
burl varchar(255),
badd1 varchar(155),
badd2 varchar(255),
bcity char(55),
bstate char(55),
bzip varchar(55),
bphone varchar(255),
bfax varchar(255),
btax decimal(4,3) NOT NULL DEFAULT 0.00,
keyword1 varchar(25),
keyword2 varchar(25),
keyword3 varchar(25),
keyword4 varchar(25),
keyword5 varchar(25),
updated timestamp,
created datetime
);

CREATE TABLE user_business_cat_main (
bid bigint(255),
mid bigint(255) AUTO_INCREMENT PRIMARY KEY,
mcat varchar(255),
updated timestamp,
created datetime
);

CREATE TABLE user_business_cat_sub (
bid bigint(255),
sid bigint(255) AUTO_INCREMENT PRIMARY KEY,
scat varchar(255),
updated timestamp,
ceated datetime
);

CREATE TABLE user_business_cat_items (
bid bigint(255),
iid bigint(255) AUTO_INCREMENT PRIMARY KEY,
img varchar(255),
mcat int(255),
scat int(255),
item varchar(255),
description varchar(255),
price decimal(13,2),
updated timestamp,
created datetime
);

CREATE TABLE user_business_orders (
bid bigint(255),
aid bigint(255),
oid bigint(255),
item varchar(255),
item_count int(255),
total decimal(13,2),
tax decimal(4,3),
completed int(5),
driver bigint(255),
dstatus int(1) NOT NULL DEFAULT 0,
updated timestamp,
created datetime
);

CREATE TABLE user_business_news (
bid bigint(255),
news varchar(255),
updated timestamp,
created datetime
);

CREATE TABLE user_cart (
aid bigint(255),
bid bigint(255),
iid bigint(255),
sin varchar(255),
item varchar(255),
description varchar(255),
price decimal(13,2),
qnty int(5),
updated timestamp,
created datetime
);

CREATE TABLE user_cart_history (
bid bigint(255),
aid bigint(255),
iid bigint(255),
oid bigint(255),
sin varchar(255),
item varchar(255),
description varchar(255),
price decimal(13,2),
qnty int(5),
updated timestamp,
created datetime
);

CREATE TABLE user_driver (
aid bigint(255),
did bigint(255) AUTO_INCREMENT PRIMARY KEY,
scr varchar(255),
ali varchar(255),
dap int(1) NOT NULL DEFAULT 0,
dac int(1),
dra int(11) NOT NULL DEFAULT 100,
dverified int(1),
dkey varchar(255),
dstart bigint(255),
ssn varchar(55),
dl varchar(55),
make varchar(55),
model varchar(55),
year varchar(9),
insurance_provider varchar(255),
insurance_policy varchar(255),
dzip varchar(55),
drate decimal(13,2) NOT NULL DEFAULT 0.00,
dper int(1),
updated timestamp,
created datetime
);

CREATE TABLE user_profile (
aid bigint(255),
pid bigint(255) AUTO_INCREMENT PRIMARY KEY,
pdr int(11) NOT NULL DEFAULT 80,
pic varchar(255),
ali varchar(255),
email varchar(255),
verified int(1),
vkey varchar(255),
vstart bigint(255),
fname char(55),
lname char(55),
add1 varchar(155),
add2 varchar(255),
city char(55),
state char(55),
zip varchar(55),
phone varchar(255),
updated timestamp,
created datetime
);

CREATE TABLE user_mtrans (
aid bigint(255),
pid bigint(255) AUTO_INCREMENT PRIMARY KEY,
vtype int(1),
vamt decimal(5,2),
vnumber varchar(25),
vexmo int(9),
vexyr int(9),
vccv int(5),
reciept varchar(255),
updated timestamp,
created datetime
);

CREATE TABLE user_ptrans (
aid bigint(255),
pid bigint(255) AUTO_INCREMENT PRIMARY KEY,
id varchar(255),
intent varchar(255),
status varchar(255),
email varchar(255),
payer_id varchar(255),
purchase_description varchar(255),
purchase_amount decimal(13,2),
updated timestamp,
created datetime
);

CREATE TABLE user_rides (
aid bigint(255),
rid bigint(255) AUTO_INCREMENT PRIMARY KEY,
driver bigint(255),
dstatus int(1) NOT NULL DEFAULT 0,
padd1 varchar(155),
padd2 varchar(255),
pcity char(55),
pstate char(55),
pzip varchar(55),
dadd1 varchar(155),
dadd2 varchar(255),
dcity char(55),
dstate char(55),
dzip varchar(55),
updated timestamp,
created datetime
);

CREATE TABLE user_rides_from (
aid bigint(255),
rfi bigint(255) AUTO_INCREMENT PRIMARY KEY,
add1 varchar(155),
add2 varchar(255),
city char(55),
state char(55),
zip varchar(55),
updated timestamp,
created datetime
);

CREATE TABLE user_rides_to (
aid bigint(255),
rti bigint(255) AUTO_INCREMENT PRIMARY KEY,
add1 varchar(155),
add2 varchar(255),
city char(55),
state char(55),
zip varchar(55),
updated timestamp,
created datetime
);


-----ON COMPLETION
CLEAR OUT SKEYS!!!!!

random account id's to prevent random guessing.
NOW--
USER PROFILE PAGE FINISH RATINGS , ????

TRANSACTION AFTER APPROVED STALLS @ 'YOUR TRANSACTION WAS APPROVED' PROCEED 2 TICKET??

ACCOUNT PAGE-

Welcome, hungry(0),

Setup Profile & verify email

Add your menu
Menu includes location+
x=
Place an order
Order history+

------------
ORDER PAGE--
Browser restaurants withyout being logged in

Able to order without being logged in

Limit 1 restaurant per order

Store order in session

Login / Finalize / Place order

Can require .99 account validation to allow ordering
------------

PROFILE | 


BUSINESS PAGE-----------

HEADER IMAGE
CONTENT        | CONTENT CONTENT CONTENT
COUPONS          CATEGORY CSS COLLAPSE
ANNOUNCEMENTS      -item
HOURS
ADDRESS          CATEGORY CSS COLLAPSE
PHONE		   -item


Calculate Price?? <-- 4cart

Posts / Announcements <-- Done

For Sale Cat/Item <-- Done

Need to switch cat sort order & item sort

Full screen breaks,, session set?? <--Done

Add results to order.php <-- Done

Shopping cart, checkout / order <-- Done

http://localhost/mme/index.php?p=business&c=Bistro+Italiano

http://localhost/mme/index.php?p=account
-_-NEED-2-DO-_-_-_------
Cart total item in biz order should add qty <-- Done
Add biz orders to In-coming orders <-- Done
Login Button Personalize?? <-- Done
Cart: if an order is pending show order, not cart <-- Done
CC Stays in session
------------------------
Ability update personal profile pic
Ability update business profile pic
profile box fix on submit form full scr exit
Add cc into cart <-- Done
Nav menu animation <-- Done
Burger Icon?
Drivers $99 annually
Order completion <-- Done
Business see wish carts?? Unsure whether to let a business see uncompleted orders for their business or not.
default tax rate 0.00 <-- Done

*when owner orders from hi8mself and order compltes to profile page when status changed it reloads the child window when it should close the child and reload parent

NEXT ** CHANGE DRIVER TSATUS WHEN JOB ACCEPTED
------------------------
zerofeedelivery@gmail.com
idrirjgx_mme
idrirjgx_app
k2j3h42k_!lkjlkj







//CC SETP
STRIPE.COM - In Progress


















/////////////DRIVER APPROVAL

	            echo('<span class="c_008000"><span class="f_arial12"><span class="f_bold">');
	            if($_SESSION['dap'] == 0) {
	                echo('&#9888;&nbsp;your application to drive is pending...');
	            } elseif($_SESSION['dap'] == 1) {
	                echo('&#9888;&nbsp;your application to drive has been approved!');
	            } elseif($_SESSION['dap'] == 2) {
	                echo('&#9888;&nbsp;your application to drive has been terminated, please resubmit later...');
	            } elseif($_SESSION['dap'] == 3) {
	                echo('&#9888;&nbsp;there were problems with your application...');
	            } elseif($_SESSION['dap'] == 4) {
	                echo('&#9888;&nbsp;your application to drive has been rejected...');
	            } elseif($_SESSION['dap'] == 5) {
	                echo('&#9888;&nbsp;please call customer care...');
	            }
	            echo('</span></span></span>');
	        }
            */
            
            
            
            
///////PAYPAL
> https://stackoverflow.com/questions/44021693/paypal-express-checkout-php-curl-execute-payment-not-show-payment-notification

<?php

$ch = curl_init();
$clientId = "myId";
$secret = "mySecret";

curl_setopt($ch, CURLOPT_URL, "https://api.sandbox.paypal.com/v1/oauth2/token");
curl_setopt($ch, CURLOPT_HEADER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
curl_setopt($ch, CURLOPT_USERPWD, $clientId.":".$secret);
curl_setopt($ch, CURLOPT_POSTFIELDS, "grant_type=client_credentials");

$result = curl_exec($ch);

if(empty($result))die("Error: No response.");
else
{
    $json = json_decode($result);
    print_r($json->access_token);
}

curl_close($ch);

?>







//https://stackoverflow.com/questions/37265008/paypal-get-transaction-details-with-php-curl

<?php

//this function is for handling post call requests
function make_post_call($url, $postdata) {
    global $token;
    $curl = curl_init($url); 
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, true);
    curl_setopt($curl, CURLOPT_SSLVERSION , 6);
    curl_setopt($curl, CURLOPT_HEADER, false);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($curl, CURLOPT_HTTPHEADER, array(
                'Authorization: Bearer '.$token,
                'Accept: application/json',
                'Content-Type: application/json'
                ));

    curl_setopt($curl, CURLOPT_POSTFIELDS, $postdata); 
    $response = curl_exec( $curl );
    print_r($response); //IM NOW RECEIVING OUTPUT, however symbols are now being replaced by placeholders such as '%40', how can i prevent this?
    if (empty($response)) {
        die(curl_error($curl)); //close due to error
        curl_close($curl); 
    } else {
        $info = curl_getinfo($curl);
        echo "Time took: " . $info['total_time']*1000 . "ms\n";
        curl_close($curl); // close cURL handler
        if($info['http_code'] != 200 && $info['http_code'] != 201 ) {
            echo "Received error: " . $info['http_code']. "\n";
            echo "Raw response:".$response."\n";
            die();
        }
    }
    // Convert the result from JSON format to a PHP array 
    $jsonResponse = json_decode($response, TRUE);
    return $jsonResponse;
}

$token = get_access_token($url,$postArgs); //works and returns a valid access token

//This is the URL for the call
$url = 'https://api-3t.sandbox.paypal.com/nvp';

//This is the data to be sent in the call 
$postdata = array(
'USER' => 'peoplesroewrwwsg_api1.outlook.com', 
'PWD' => 'KR2TVKHGDSHSNDJ6E2', 
'SIGNATURE' => 'AFcWxV21C7fdFHSGGSDGD51G0BJYUWOCSyjUAKPPGs', 
'METHOD' => 'GetTransactionDetails', 
'VERSION' => '123', 
'TransactionID' => '1RE953245246192109'
);

$postdata = http_build_query($postdata); 
//$postdata = json_encode($postdata); //Is this the correct way of formatting? 

$transactionInfo = make_post_call($url, $postdata); //get transaction details NOT WORKING

print_r($transactionInfo); //does not print anything
?> 



<?php
function get_transaction_details( $transaction_id ) { 
    $api_request = 'USER=' . urlencode( 'api_username' )
                .  '&PWD=' . urlencode( 'api_password' )
                .  '&SIGNATURE=' . urlencode( 'api_signature' )
                .  '&VERSION=76.0'
                .  '&METHOD=GetTransactionDetails'
                .  '&TransactionID=' . $transaction_id;

    $ch = curl_init();
    curl_setopt( $ch, CURLOPT_URL, 'https://api-3t.sandbox.paypal.com/nvp' ); // For live transactions, change to 'https://api-3t.paypal.com/nvp'
    curl_setopt( $ch, CURLOPT_VERBOSE, 1 );

    // Uncomment these to turn off server and peer verification
    // curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, FALSE );
    // curl_setopt( $ch, CURLOPT_SSL_VERIFYHOST, FALSE );
    curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1 );
    curl_setopt( $ch, CURLOPT_POST, 1 );

    // Set the API parameters for this transaction
    curl_setopt( $ch, CURLOPT_POSTFIELDS, $api_request );

    // Request response from PayPal
    $response = curl_exec( $ch );
    // print_r($response);

    // If no response was received from PayPal there is no point parsing the response
    if( ! $response )
        die( 'Calling PayPal to change_subscription_status failed: ' . curl_error( $ch ) . '(' . curl_errno( $ch ) . ')' );

    curl_close( $ch );

    // An associative array is more usable than a parameter string
    parse_str( $response, $parsed_response );

    return $parsed_response;
}
$response = get_transaction_details('transaction_id');
echo "<pre>"; print_r($response);
?>



TEST CC #

Card Type: Visa

Card Number: 4032032545204999

Expiration Date: 01/2026

CVV: 579






