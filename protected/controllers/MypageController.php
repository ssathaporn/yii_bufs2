<?php

class MypageController extends Controller {

    public $layout = '//layouts/mypage';

    public function actionIndex() {
        $this->render('index');
    }

    public function actionLogin() {
        $model = new LoginForm();

        if (isset($_POST['LoginForm'])) {
            $model->attributes($_POST['LoginForm']);

            if ($model->validate()) {
                $username = $_POST['LoginForm']['username'];
                $password = $_POST['LoginForm']['password'];
                $user = Users::model()->find(array(
                    'condition' => 'username = :u AND password = :u',
                    'params' => array(
                        'u' => $username,
                        'p' => $password
                    )
                ));
            }
        }

        $this->render('login', array(
            'model' => $model
        ));
    }

    public function actionRegister() {
        $model = new Users();
        $this->performAjaxValidation($model);
        if (isset($_POST['Users'])) {
            $model->local_fname = $_POST['Users']['local_fname'];
            $model->local_lname = $_POST['Users']['local_lname'];
            $model->en_fname = $_POST['Users']['en_fname'];
            $model->en_lname = $_POST['Users']['en_lname'];
            $model->gender = $_POST['Users']['gender'];
            $model->nationality = $_POST['Users']['nationality'];
            $model->birthday = $_POST['birthday'];
            $model->username = $_POST['Users']['username'];
            $model->password = $_POST['Users']['password'];
            $model->email = $_POST['Users']['email'];
            $model->telephone = $_POST['Users']['telephone'];
            $model->register_date = date("Y-m-d H:i:s");
            if ($model->save()) {
                Yii::app()->user->setFlash('success', 'สมัครสมาชิกสำเร็จ !!');
                $this->redirect('index.php?r=mypage/register');
            }
        }
        $this->render('register', array('model' => $model));
    }

    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'register-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

}
