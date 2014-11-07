<?php

class VisionController extends Controller {
    public $layout = '//layouts/vision';
    
    public function actionIndex(){
        $this->render('index');
    }
    
    public function actionStudentexchange(){
        $this->render('studentexchange');
    }
    
    public function actionCampusnamsadong(){
        $this->render('campusnamsadong');
    }
    
    public function actionInternationalteacher(){
        $this->render('internationalteacher');
    }
    
    public function actionAssociate(){
        $this->render('associate');
    }


    public function actionIntertnationalresearch(){
        $this->render('intertnationalresearch');
    }
}