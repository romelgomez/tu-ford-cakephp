<?php
    $SITE_URL   = 'http://www.example-store.com';
    $SITE_NAME  = 'ExampleStore.com';
    $SITE_EMAIL  = 'support@examplestore.com';
?>
<?php echo $SITE_NAME; ?> - You password has been changed
If you do not recognize this change, please contact us at (<?php echo $SITE_EMAIL ?>).
<?php echo $this->fetch('content')."\r\n"; ?>