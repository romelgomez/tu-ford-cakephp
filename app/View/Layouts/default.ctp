<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
?>
<!DOCTYPE html>
<html lang="en">
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

    $data = $this->{'request'}->{'data'};

    $SITE_URL   = 'http://www.tuford.com';
    $SITE_NAME  = 'TuFord.com';

    // facebook
    if(isset($url_action)){
        if($url_action == 'product'){

            // Title URL -  lazy solution
            $foo    = trim($data['Product']['title']);
            $foo    = strtolower($foo);
            $foo    = str_replace('/', '',$foo);
            $foo    = preg_replace( '/\s+/', ' ', $foo);
            $title  = str_replace(' ', '-',$foo);

            // Description
            $text =  $data['Product']['body'];

            $description = '';
            $_description        =  strip_tags($text);     // remove html entities
            $_description        =  trim($_description);   // remove whitespaces
            $_descriptionLength  =  strlen($_description); // Get string length

            if($_descriptionLength > 200){
                $_description = substr($_description, 0, 140);      // Return part of a string
                $_description =  explode(" ",$_description);        // returns an array containing all the words found inside the string
                for($i = 0; $i < sizeof($_description)-1; $i++){
                    $description .= ' '.(string)$_description[$i];
                }
                $description = ucfirst(trim($description)).' ...';
            }else{
                $description = ucfirst($_description);
            }

            echo '<title>'.ucfirst($data['Product']['title']).' - '.$SITE_NAME.'</title>';

            echo '<meta property="og:title" content="'.ucfirst($data['Product']['title']).' - '.$SITE_NAME.'" />';
            echo '<meta property="og:url" content="'.$SITE_URL.'/product/'.$data['Product']['id'].'/'.$title.'.html" />';
            echo '<meta property="og:type" content="website" />';
            echo '<meta property="og:site_name" content="'.$SITE_NAME.'" />';
            echo '<meta property="og:description" content="'.$description.'" />';
            echo '<meta property="og:image" content="'.$SITE_URL.'/resources/app/img/products/'.$data['Image'][0]['facebook'].'" />';
            echo '<meta property="fb:app_id" content="338515926310582" />'; // <###### CHANGE THIS #######>


            echo '<meta name="twitter:card" content="summary_large_image" />';
            echo '<meta name="twitter:site" content="@romelgomez07" />'; //  <###### CHANGE THIS #######>
            echo '<meta name="twitter:title" content="'.ucfirst($data['Product']['title']).' - '.$SITE_NAME.'" />';
            echo '<meta name="twitter:description" content="'.$description.'">';
            echo '<meta name="twitter:image:src" content="'.$SITE_URL.'/resources/app/img/products/'.$data['Image'][0]['facebook'].'" />';
            echo '<meta name="twitter:url" content="'.$SITE_URL.'/product/'.$data['Product']['id'].'/'.$title.'.html" />';

        }

        if($url_action == ''){

            if(isset($bannerSelected) && $bannerSelected){
                $banner = '/resources/app/img/banners/'.$bannerSelected['Banner']['name'];
            }else{
                $banner = 'resources/app/img/los-angeles.jpg';  // <###### CHANGE THIS #######>
            }

            echo '<title>'.$SITE_NAME.'</title>';

            echo '<meta property="og:title" content="'.$SITE_NAME.'" />';
            echo '<meta property="og:url" content="'.$SITE_URL.'" />';
            echo '<meta property="og:type" content="website" />';
            echo '<meta property="og:site_name" content="'.$SITE_NAME.'" />';
            echo '<meta property="og:description" content="Visita el stock de productos y/o servicios que tengo para ti" />'; // <###### CHANGE THIS #######>
            echo '<meta property="og:image" content="'.$SITE_URL.'/'.$banner.'" />';
            echo '<meta property="fb:app_id" content="338515926310582" />'; // <###### CHANGE THIS #######>

            echo '<meta name="twitter:card" content="summary_large_image" />';
            echo '<meta name="twitter:site" content="@romelgomez07" />';  // <###### CHANGE THIS #######>
            echo '<meta name="twitter:title" content="'.$SITE_NAME.'" />';
            echo '<meta name="twitter:description" content="Visita el stock de productos y/o servicios que tengo para ti">'; // <###### CHANGE THIS #######>
            echo '<meta name="twitter:image:src" content="'.$SITE_URL.'/'.$banner.'" />';
            echo '<meta name="twitter:url" content="'.$SITE_URL.'" />';

        }

    }else{
        echo '<title>'.$SITE_NAME.'</title>';
    }
    ?>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">


    <?php
    $css = array();

    //  Bootstrap
//      array_push($css,'//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css');
	array_push($css,'/resources/bower_components/bootstrap/dist/css/bootstrap.css');


    //  font-awesome
//      array_push($css,'//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css');
	array_push($css,'/resources/bower_components/font-awesome/css/font-awesome.css');


    //  Pnotify https://github.com/sciactive/pnotify
//      array_push($css,'https://cdnjs.cloudflare.com/ajax/libs/pnotify/2.0.0/pnotify.core.min.css');
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
<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background: url(/resources/app/img/escheresque_ste.png);" >
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
            }
            if(isset($url_action) && $url_action == 'login'){
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
<div class="footer" style="background: #222; background: url(/resources/app/img/escheresque_ste.png);">
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
