<?php class FrontEndsController extends AppController {

    public function beforeFilter(){

        $this->{'Auth'}->allow('index');

        parent::beforeFilter();
    }

    public function index(){

		$this->{'loadModel'}('Banner');

		$url_action = strstr($this->{'request'}->url, '/', true); // Desde PHP 5.3.0
		$this->{'set'}('url_action',$url_action);

		// set banner option for logged users
		$user_logged = $this->{'Auth'}->User();
		if($user_logged){
			$banners = $this->{'Banner'}->find('all', array(
				'conditions' => array('Banner.deleted'=>0,'Banner.size'=>'small')
			));

//                [
//                  {'small':'f155d610-a8c7-4aee-b4f1-98f0b3442012.jpg','large':'f155d610-a8c7-4aee-b4f1-98f0b34420ss.jpg'},
//                  {'small':'0c05ec97-aa2d-4cf7-a80f-20d8e1c38887.jpg','large':'0c05ec97-aa2d-4cf7-a80f-20d8e1c38855.jpg'}
//                ]

			if (sizeof($banners) > 0) {

				$data = array();

				foreach($banners as $index_0 => $smallImagen){

					$data[$index_0]['small']['id']      = $smallImagen['Banner']['id'];
					$data[$index_0]['small']['name']    = $smallImagen['Banner']['name'];

					$childBanners 	=  $this->{'Banner'}->find('all',array(
							'conditions' => array('Banner.parent_id' => $smallImagen['Banner']['id']),
							'contain' => false
						)
					);

					foreach($childBanners as $index_1 => $childBanner){
						$data[$index_0][$childBanner['Banner']['size']]['id']   = $childBanner['Banner']['id'];
						$data[$index_0][$childBanner['Banner']['size']]['name'] = $childBanner['Banner']['name'];
					}

				}

				$this->{'set'}('banners',$data);
			}else{
				$this->{'set'}('banners',array());
			}
		}

	}

}
