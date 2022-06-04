<?php
@session_start();
include('./auth.php');
include('./forms.php');
include('./dbq.php');
$css = ('
    
');
$scripts = ('
	$("#merchAdd1").on("submit",  function(e){
		e.preventDefault();
		$.ajax({
			data: $(this).serialize(),
			type: $(this).attr("method"),
			url: $(this).attr("action"),
			success: function(response) {
				$("#merchant").html(response);
			}
		});
		$("#merchAdd1").unbind(this.submit);
		return false;
	});
');
$css = str_replace(array("\t","\n","\r"),"",$css);
$scripts = str_replace(array("\t","\n","\r"),"",$scripts);
echo('<style>'.$css.'</style>');
echo('<script>'.$scripts.'</script>');

$form1 = array(//array('element'=>'', 'name'=>'', 'value'=>'', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
    array('element'=>'pform', 'name'=>'merchAdd1', 'value'=>'./www-cgi/merchant.php', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
    array('element'=>'hinput', 'name'=>'merch', 'value'=>'1', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>''),
    array('element'=>'tinput', 'name'=>'alog', 'value'=>'', 'js'=>'', 'text'=>'API Login:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'tinput', 'name'=>'akey', 'value'=>'', 'js'=>'', 'text'=>'API Key:', 'size'=>'199', 'style'=>'width: 199px;'),
    array('element'=>'sinput', 'name'=>'merchAdd1Submit', 'value'=>'add', 'js'=>'', 'text'=>'', 'size'=>'', 'style'=>'')
);
echo('<h4>Authorize.net:</h4>');
echo(form($form1));
?>