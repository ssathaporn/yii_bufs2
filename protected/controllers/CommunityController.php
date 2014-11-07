<?php

class CommunityController extends Controller {
    
    public $layout = '//layouts/community';
    
    public function actionIndex(){
        $this->render('index');
    }
    
    public function actionPublicRelation(){
        $this->render('publicrelation');
    }
    
    public function actionQna(){
        $this->render('qna');
    }
}

