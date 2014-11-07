<?php

class JobController extends Controller {

    public $layout = '//layouts/job';

    public function actionIndex() {
        $model = new JobForm();
        $branchs = JobsBranch::model()->findAll();
        $education = JobsEducation::model()->findAll();
        $positions = JobsPosition::model()->findAll();

        $this->render('index', array(
            'model' => $model,
            'branchs' => $branchs,
            'education' => $education,
            'position' => $positions
        ));
    }

    public function actionAgreement() {
        $this->render('agreement');
    }

    public function actionInsertjobs() {
        $model = new Jobs();

        for ($i = 1; $i <= 100; $i++) {
            $model->local_fname = 'จิรายุ_' . $i;
            $model->local_lname = 'คุ้มกายใจ_' . $i;
            $model->en_fname = 'FNAME_' . $i;
            $model->en_lname = 'LNAME_' . $i;
            $model->age = rand(18, 35);
            $model->nationality = array_rand(array('th', 'kr'));
            $model->gender = array_rand(array('male', 'female'));
            $model->interest_job1 = rand(1, 7);
            $model->interest_job2 = rand(1, 7);
            $model->interest_job3 = rand(1, 7);
            $model->education = rand(1, 3);
            $model->education_branch = rand(1, 4);
            $model->education_branch = rand(1, 4);
        }

        echo "Insert Complete !!";
    }

}
