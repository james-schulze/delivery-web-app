<?php
@session_start();
function paypal($type) {
    if($type == 1) {
        $pp = ('
            <div id="smart-button-container">
            <div style="text-align: center;">
            <div id="paypal-button-container"></div>
            </div>
            </div>
            <script>
            function initPayPalButton() {
                paypal.Buttons({
                    style: {
                        shape: \'rect\',
                        color: \'gold\',
                        layout: \'vertical\',
                        label: \'paypal\',
                        
                    },
                        
                    createOrder: function(data, actions) {
                        return actions.order.create({
                            purchase_units: [{"description":"Profile Verification","amount":{"currency_code":"USD","value":0.99}}]
                        });
                    },
                        
                    onApprove: function(data, actions) {
                      return actions.order.capture().then(function(details) {
                        $("#response").load("./www-cgi/verify.php?xt=1&xa="+details.id+"&xb="+details.intent+"&xc="+details.status+"&xd="+details.payer.email_address+"&xe="+details.payer.payer_id+"&xf="+details.purchase_units[\'0\'].description+"&xg="+details.purchase_units[\'0\'].amount.value);
                        alert(\'Transaction completed by \' + details.payer.name.given_name + \'!\');
                        setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);  
                    });
                    },
                        
                    onError: function(err) {
                        console.log(err);
                    }
                }).render(\'#paypal-button-container\');
            }
            initPayPalButton();
            </script>
        ');
        return $pp;
    } elseif($type == 2) {
        $bp = ('
            <div id="smart-button-container">
                  <div style="text-align: center;">
                    <div id="paypal-button-container"></div>
                  </div>
                </div>
              <script>
                function initPayPalButton() {
                  paypal.Buttons({
                    style: {
                      shape: \'rect\',
                      color: \'gold\',
                      layout: \'vertical\',
                      label: \'paypal\',
                      
                    },
            
                    createOrder: function(data, actions) {
                      return actions.order.create({
                        purchase_units: [{"description":"Business Verification","amount":{"currency_code":"USD","value":99.00}}]
                      });
                    },
            
                    onApprove: function(data, actions) {
                      return actions.order.capture().then(function(details) {
                        $("#response").load("./www-cgi/verify.php?xt=2&xa="+details.id+"&xb="+details.intent+"&xc="+details.status+"&xd="+details.payer.email_address+"&xe="+details.payer.payer_id+"&xf="+details.purchase_units[\'0\'].description+"&xg="+details.purchase_units[\'0\'].amount.value);
                        alert(\'Transaction completed by \' + details.payer.name.given_name + \'!\');
                        setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);  
                    });
                    },
            
                    onError: function(err) {
                      console.log(err);
                    }
                  }).render(\'#paypal-button-container\');
                }
                initPayPalButton();
              </script>
        ');
        return $bp;
    } elseif($type == 3) {
        $dp = ('
            <div id="smart-button-container">
                  <div style="text-align: center;">
                    <div id="paypal-button-container"></div>
                  </div>
                </div>
              <script>
                function initPayPalButton() {
                  paypal.Buttons({
                    style: {
                      shape: \'rect\',
                      color: \'gold\',
                      layout: \'vertical\',
                      label: \'paypal\',
                      
                    },
            
                    createOrder: function(data, actions) {
                      return actions.order.create({
                        purchase_units: [{"description":"Driver Verification","amount":{"currency_code":"USD","value":99.00}}]
                      });
                    },
            
                    onApprove: function(data, actions) {
                      return actions.order.capture().then(function(details) {
                        $("#response").load("./www-cgi/verify.php?xt=3&xa="+details.id+"&xb="+details.intent+"&xc="+details.status+"&xd="+details.payer.email_address+"&xe="+details.payer.payer_id+"&xf="+details.purchase_units[\'0\'].description+"&xg="+details.purchase_units[\'0\'].amount.value);
                        alert(\'Transaction completed by \' + details.payer.name.given_name + \'!\');
                        setTimeout(function() { $("#page").load("./www-cgi/account.php"); history.pushState({}, null, \'https://idrivezero.com/index.php?p=account\'); $("#verify").hide(); },999);  
                    });
                    },
            
                    onError: function(err) {
                      console.log(err);
                    }
                  }).render(\'#paypal-button-container\');
                }
                initPayPalButton();
              </script>
        ');
        return $dp;
    } elseif($type == 4) {//alert(JSON.stringify(details));
        $ad = ('
            <div id="smart-button-container">
                  <div style="text-align: center;">
                    <div id="paypal-button-container"></div>
                  </div>
                </div>
              <script>
                function initPayPalButton() {
                  paypal.Buttons({
                    style: {
                      shape: \'rect\',
                      color: \'gold\',
                      layout: \'vertical\',
                      label: \'paypal\',
                      
                    },
            
                    createOrder: function(data, actions) {
                      return actions.order.create({
                        purchase_units: [{"description":"Activate Banner","amount":{"currency_code":"USD","value":99}}]
                      });
                    },
            
                    onApprove: function(data, actions) {
                      return actions.order.capture().then(function(details) {
                        alert(\'Transaction completed by \' + details.payer.name.given_name + \'!\');
                      });
                    },
            
                    onError: function(err) {
                      console.log(err);
                    }
                  }).render(\'#paypal-button-container\');
                }
                initPayPalButton();
              </script>
        ');
        return $ad;
    }
}
?>