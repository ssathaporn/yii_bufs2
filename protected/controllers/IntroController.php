<?php

class IntroController extends Controller {

    public $layout = '//layouts/intro';

    public function actionIndex() {
        $this->render('index');
    }
    
    public function actionPresident(){
        $this->render('president');
    }

    public function actionPresidentchart(){
        $this->render('presidentchart');
    }
    
    public function actionPurpose(){
        $this->render('purpose');
    }
    
    public function actionTargetcharacter(){
        $this->render('targetcharacter');
    }
    
    public function actionHistory(){
        $this->render('history');
    }
    
    public function actionOrzchart(){
        $this->render('orzchart');
    }
    
    public function actionRoutemap(){
        $this->render('routemap');
    }

}
