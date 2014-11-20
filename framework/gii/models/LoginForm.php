<?php

Yii::import('gii.components.UserIdentity');

class LoginForm extends CFormModel {

    public function rules() {
        return array(
            array('username, password', 'required'),
        );
    }
    
    public function attributeLabels() {
        return array(
            'username' => 'Username',
            'password' => 'Password',
        );
    }
}
