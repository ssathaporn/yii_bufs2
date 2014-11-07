<?php

class Users extends CActiveRecord {

    public function tableName() {
        return 'Users';
    }

    public function rules() {
        return array(
            array('local_fname, local_lname, en_fname, en_lname, birthday, gender, nationality, username, password, email, telephone', 'required'),
            array('username, email', 'unique'),
            array('email', 'email'),
            array('birthday, register_date', 'safe'),
        );
    }

    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'local_fname' => 'ชื่อ',
            'local_lname' => 'นามสกุล',
            'en_fname' => 'ชื่อ(อังกฤษ)',
            'en_lname' => 'นามสกุล(อังกฤษ)',
            'username' => 'ชื่อผู้ใช้งาน',
            'password' => 'รหัสผ่าน',
            'nationality' => 'สัญชาติ',
            'email' => 'อีเมล์',
            'telephone' => 'เบอร์โทรศัพท์',
            'gender' => 'เพศ',
            'birthday' => 'วันเกิด',
            'register_date' => 'Register Date',
            'status' => 'Status',
        );
    }

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
