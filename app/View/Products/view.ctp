<?php
//    debug($this->{'request'});
    $data = $this->{'request'}->{'data'};
?>

<?php

if($bannerSelected){
    $banner = '/resources/app/img/banners/'.$bannerSelected['Banner']['name'];
}else{
    $banner = '/resources/app/img/los-angeles.jpg';
}

?>

<div id="banner" class="banner" style="background: url(<?php echo $banner; ?>) no-repeat center center scroll; -webkit-background-size: cover; -moz-background-size: cover;  -o-background-size: cover; background-size: cover;" >
    <div class="banner-content">
    </div>
</div>


<!--    <header id="banner" class="page-header" style="margin-top: 0; background: url('--><?php //echo $banner; ?><!--') no-repeat center center scroll; padding: 350px 20px 10px 20px; -webkit-background-size: cover; -moz-background-size: cover;   -o-background-size: cover;   background-size: cover;">-->
<!--        <h1>-->
<!--            <a href="/stock/--><?php //echo $data['User']['id']; ?><!--" style="text-shadow: 0 0 3px rgba(0,0,0,.8); color: #fff;">--><?php //echo ucfirst($data['User']['name']);  ?><!-- Stock</a>-->
<!--        </h1>-->
<!--    </header>-->


<!-- Content
===================== -->
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12">
            <!-- start content-->

            <div class="panel panel-default" style="border: 1px solid black;">
                <div class="panel-body" style="border-top-left-radius: 4px; border-top-right-radius: 4px; background: url(/resources/app/img/escheresque_ste.png);">
                    <div class="pw-widget pw-counter-vertical">
                        <a class="pw-button-facebook pw-look-native"></a>
                        <a class="pw-button-twitter pw-look-native"></a>
                        <a class="pw-button-googleplus pw-look-native"></a>
                        <a class="pw-button-pinterest pw-look-native"></a>
                        <a class="pw-button-linkedin pw-look-native"></a>
                        <a class="pw-button-tumblr pw-look-native"></a>
                        <a class="pw-button-reddit pw-look-native"></a>
                        <a class="pw-button-blogger pw-look-native"></a>
                        <a class="pw-button-email pw-look-native"></a>
                    </div>
                    <script src="http://i.po.st/static/v3/post-widget.js#publisherKey=4a68gt2qi4hhevvdnlj5&retina=true" type="text/javascript"></script>
                </div>
                <div class="panel-footer" style="background: url(/resources/app/img/escheresque.png);border-top: 1px solid gold;">
                    <h1 style="margin-top: 0; color: #000000; margin-bottom: 0;"><?php  echo ucfirst($data['Product']['title']) ?></h1>
                </div>
            </div>

            <div class="panel panel-default" style="border: 1px solid black;">
                <!-- Default panel contents -->
                <div class="panel-heading" style="background: url(/resources/app/img/small_steps.png); border-bottom: 1px solid black;">
                    <span class="glyphicon glyphicon-picture" aria-hidden="true"></span> Imágenes:
                </div>
                <div class="panel-body">
                    <?php foreach($this->request->data['Image'] as $index => $imagen){ ?>

                        <a href="/resources/app/img/products/<?php echo $imagen['large']; ?>" data-toggle="lightbox" data-gallery="multiimages" data-title="<?php echo ucfirst($data['Product']['title']) ?>" class="col-md-2 thumbnail" style=" margin: 5px;">
                            <img src="/resources/app/img/products/<?php echo $imagen['small']; ?>" class="img-responsive">
                        </a>

                    <?php } ?>
                </div>
                <ul class="list-group">
                    <li class="list-group-item" style="background: url(/resources/app/img/small_steps.png); border-top: 1px solid black;">
                        <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Descripción:
                    </li>
                    <li class="list-group-item" style="border-top: 1px solid black;">
                        <?php  echo ucfirst($data['Product']['body']) ?>
                    </li>
                    <li class="list-group-item" style="background: url(/resources/app/img/escheresque_ste.png); border-top: 1px solid gold;">
                        <h2 class="text-info" style="color: gold; margin-top: 10px;">
                            <span class="glyphicon glyphicon-tag"></span>
                            Precio: $<?php echo $data['Product']['price'] ?>
                        </h2>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>

<?php

    // CSS
    $css = array();

    //  lightBox https://github.com/ashleydw/lightbox
//    array_push($css,'https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/3.0.3a/ekko-lightbox.min.css');
    array_push($css,'/resources/bower_components/ekko-lightbox/dist/ekko-lightbox.min.css');

    array_push($css,'/resources/app/css/base.css');

    $this->Html->css($css, null, array('inline' => false));

    // JS
    $scripts = array();

    //  lightBox  - https://github.com/ashleydw/lightbox
//    array_push($scripts,'https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/3.0.3a/ekko-lightbox.min.js');
    array_push($scripts,'/resources/bower_components/ekko-lightbox/dist/ekko-lightbox.min.js');

	array_push($scripts,'/resources/app/js/ekko-lightbox-call.js');

    echo $this->Html->script($scripts,array('inline' => false));

?>
