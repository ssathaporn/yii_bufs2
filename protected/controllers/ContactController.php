<?php

class ContactController extends Controller {
    
    public $layout = '//layouts/contact';
    
    public function actionIndex(){
        $model = new ContactForm();
        $this->render('index', array(
            'model' => $model
        ));
    }
}

