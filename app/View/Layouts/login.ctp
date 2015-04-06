<!DOCTYPE html>
<html lang="en" style="background: url(/resources/app/img/bg-city.jpg) no-repeat center center fixed; -webkit-background-size: cover;   -moz-background-size: cover;   -o-background-size: cover;   background-size: cover;">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
	<meta http-equiv="pragma" content="no-cache" />

    <?php
        $SITE_URL   = 'http://www.example-store.com';
        $SITE_NAME  = 'ExampleStore.com';
    ?>

    <title><?php echo $SITE_NAME ?></title>;

	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/favicon.ico" type="image/x-icon">


	<?php
	$css = array();

	//  Bootstrap
//	array_push($css,'//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css');
	array_push($css,'/resources/bower_components/bootstrap/dist/css/bootstrap.css');

	//  font-awesome
//	  array_push($css,'//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css');
	  array_push($css,'/resources/bower_components/font-awesome/css/font-awesome.css');

	//  Pnotify https://github.com/sciactive/pnotify
//	  array_push($css,'https://cdnjs.cloudflare.com/ajax/libs/pnotify/2.0.0/pnotify.core.min.css');
	  array_push($css,'/resources/bower_components/pnotify/pnotify.core.css');
	  array_push($css,'/resources/bower_components/pnotify/pnotify.buttons.css');
	  array_push($css,'/resources/bower_components/pnotify/pnotify.history.css');


	echo $this->Html->css($css);

	echo $this->fetch('css');
	?>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body style="background: none;">

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background: url(/resources/app/img/escheresque_ste.png); border-bottom: 1px solid black;" >
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/"><?php echo $SITE_NAME ?></a>
	</div>
	<div class="collapse navbar-collapse">
		<ul class="nav navbar-nav">

			<?php if(isset($userLogged)){ ?>
				<li class=""><a href="/publish"><span class="glyphicon glyphicon-globe"></span> Publish</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span> Account <?php if(isset($userLogged)){ echo '( '.$userLogged['User']['name'].' )'; } ?> <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation" class="dropdown-header">PRODUCTS</li>
						<li><a href="/published"><span class="glyphicon glyphicon-bullhorn"></span> Published</a></li>
						<li><a href="/drafts"><span class="glyphicon glyphicon-pencil"></span> Drafts</a></li>
					</ul>
				</li>
			<?php } ?>
			<?php
			if(isset($userLogged)){
				echo '<li class=""><a href="/logout" class="menu" ><span class="glyphicon glyphicon-off"></span>  Sign out</a></li>';
			}else{
				echo '<li class=""><a href="/login" class="menu" ><span class="glyphicon glyphicon-off"></span> Log in</a></li>';
			}
			?>
		</ul>
	</div><!--/.nav-collapse -->
</div>

<!--    <div class="main-container">-->
<!--    </div>-->
<?php echo $this->fetch('content'); ?>




<!-- footer -->
<div class="footer" style="background: #222; background: url(/resources/app/img/escheresque_ste.png); border-top: 1px solid black;">
	<div style="text-align: center; margin-top: 20px; color: #ffffff;">
		Copyright &copy;2015 <?php echo $SITE_NAME ?> - All rights reserved.
		<a href="/terms-of-service" target="_blank">Terms of Service</a> &
		<a href="/privacy-policy" target="_blank">Privacy Policy</a>
	</div>
</div>

<?php

$scripts = array();

//  jQuery - https://github.com/jquery/jquery
//  array_push($scripts,'https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js');
array_push($scripts,'/resources/bower_components/jquery/dist/jquery.js');

//  Bootstrap - https://github.com/twbs/bootstrap
//  array_push($scripts,'//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js');
array_push($scripts,'/resources/bower_components/bootstrap/dist/js/bootstrap.js');

//  pnotify  - https://github.com/sciactive/pnotify
//  array_push($scripts,'https://cdnjs.cloudflare.com/ajax/libs/pnotify/2.0.0/pnotify.core.min.js');
array_push($scripts,'/resources/bower_components/pnotify/pnotify.core.js');
array_push($scripts,'/resources/bower_components/pnotify/pnotify.callbacks.js');
array_push($scripts,'/resources/bower_components/pnotify/pnotify.confirm.js');
array_push($scripts,'/resources/bower_components/pnotify/pnotify.desktop.js');
array_push($scripts,'/resources/bower_components/pnotify/pnotify.history.js');
array_push($scripts,'/resources/bower_components/pnotify/pnotify.nonblock.js');

// App
array_push($scripts,'/resources/app/js/base.js');

echo $this->Html->script($scripts);

echo $this->fetch('script');

?>

</body>
</html>
