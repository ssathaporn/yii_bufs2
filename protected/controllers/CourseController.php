<?php

class CourseController extends Controller {

    public $layout = '//layouts/course';

    public function actionIndex() {
        $this->render('index');
    }

    public function actionCoursekoreanstudent() {
        $this->render('coursekoreanstudent');
    }

}
