<?php
$SITE_URL   = 'http://www.example-store.com';
$SITE_NAME  = 'ExampleStore.com';
?>
<h3><?php echo $SITE_NAME; ?> - Set new password</h3>
<p>Click in the next link to set new password:</p>
<p><a href="<?php echo $SITE_URL; ?>/npr/<?php echo (string)$userId.'/'.(string)$publicKey; ?>" target="_blank">Set new password!</a></p>
<p>NOTE: After successfully set your new password, please delete this email.<p>
