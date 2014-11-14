<?php

class JobController extends Controller {

    public $layout = '//layouts/job';

    public function actionIndex() {

        /**         * ************************
         * Criteria
         * ************************ */
        $criteria = new CDbCriteria();

        if (isset($_GET['JobForm'])) {
            if ($_GET['JobForm']['sl_position'] != '') {
                $criteria->addCondition('education = :sl_position', 'AND')->params[':sl_position'] = $_GET['JobForm']['sl_position'];
            }
            if ($_GET['JobForm']['sl_nationality'] != '') {
                $criteria->addCondition('nationality = :sl_nationality', 'AND')->params[':sl_nationality'] = $_GET['JobForm']['sl_nationality'];
            }
            if ($_GET['JobForm']['sl_degree'] != '') {
                $criteria->addCondition('education = :sl_degree', 'AND')->params[':sl_degree'] = $_GET['JobForm']['sl_degree'];
            }
            if ($_GET['JobForm']['sl_category'] != '') {
                $criteria->addCondition('education_category = :sl_category', 'AND')->params[':sl_category'] = $_GET['JobForm']['sl_category'];
            }
            if ($_GET['JobForm']['sl_age'] != '') {
                if ($_GET['JobForm']['sl_age'] == 1) {
                    $criteria->addCondition('age >= 18 AND age <= 25', 'AND');
                } else if ($_GET['JobForm']['sl_age'] == 2) {
                    $criteria->addCondition('age >= 26 AND age <= 30', 'AND');
                } else if ($_GET['JobForm']['sl_age'] == 3) {
                    $criteria->addCondition('age >= 31 AND age <= 35', 'AND');
                } else if ($_GET['JobForm']['sl_age'] == 4) {
                    $criteria->addCondition('age > 35', 'AND');
                }
            }
            if ($_GET['JobForm']['sl_gender'] != '') {
                $criteria->addCondition('gender = :sl_gender', 'AND')->params[':sl_gender'] = $_GET['JobForm']['sl_gender'];
            }     
            if ($_GET['JobForm']['sl_language'] != '') {
                $criteria->addCondition('language1 = :sl_language OR language2 = :sl_language', 'AND')->params[':sl_language'] = $_GET['JobForm']['sl_language'];
            }
        }

        $count = Jobs::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10; // item per page
        $pages->applyLimit($criteria);
        $results = Jobs::model()->findAll($criteria);


        /*         * *************************
         * Job Form
         * ************************ */
        $model = new JobForm();
        $degree = JobsEducationDegree::model()->findAll();
        $category = JobsEducationCategory::model()->findAll();
        $position = JobsPosition::model()->findAll();
        $language = JobsLanguage::model()->findAll();
        $nationality = JobsNationality::model()->findAll();

        $this->render('index', array(
            'model' => $model,
            'degree' => $degree,
            'category' => $category,
            'position' => $position,
            'language' => $language,
            'nationality' => $nationality,
            'pages' => $pages,
            'results' => $results,
        ));
    }

    public function actionAgreement() {
        $this->render('agreement');
    }

    public function actionInsertjobs() {
        $model = new Jobs();

        $genders = array('male', 'female');
        $rawPosition = "Suparvisor,เลขานุการ,ประชาสัมพันธ์,ทนายความ,นิติกร,Legal Officer,การเงิน,วิเคราะห์การเงิน,การตลาด,การขาย,จัดซื้อ,คีย์ข้อมูล,เจ้าหน้าที่งานธุรการ,เจ้าหน้าที่ Q.C,call center,Web Programming,Web Design,Graphic Design,ติดต่อต่างประเทศ,พนักงานต้อนรับ,มัคคุเทศก์";
        $positions = explode(',', $rawPosition);

        for ($i = 1; $i <= 100; $i++) {
            $model = new Jobs();
            $model->local_fname = 'จิรายุ_' . $i;
            $model->local_lname = 'คุ้มกายใจ_' . $i;
            $model->en_fname = 'FNAME_' . $i;
            $model->en_lname = 'LNAME_' . $i;
            $model->age = rand(18, 50);
            $model->nationality = rand(1, 2);
            $model->gender = $genders[array_rand($genders)];
            $model->interest_position1 = $positions[rand(0, 20)];
            $model->interest_position2 = $positions[rand(0, 20)];
            $model->interest_position3 = $positions[rand(0, 20)];
            $model->position_category = rand(1, 9);
            $model->education = rand(1, 4);
            $model->education_category = rand(1, 8);
            $model->language1 = rand(1, 3);
            $model->language2 = rand(1, 3);
            $model->image = rand(1, 4);
            $model->created_date = new CDbExpression('NOW()');
            $model->save();
        }

        echo "Insert Complete !!";
    }

}
