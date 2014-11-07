<?php

/**
 * ContactForm class.
 * ContactForm is the data structure for keeping
 * contact form data. It is used by the 'contact' action of 'SiteController'.
 */
class ContactForm extends CFormModel {

    public $name;
    public $tel;
    public $email;
    public $title;
    public $message;

    /**
     * Declares the validation rules.
     */
    public function rules() {
        return array(
            // name, email, subject and body are required
            array('name, tel, email, title, message', 'required'),
            // email has to be a valid email address
            array('email', 'email'),
        );
    }

    public function attributeLabels() {
        return array(
            'name' => 'ชื่อ-สกุล',
            'tel' => 'เบอร์โทรศัพท์',
            'email' => 'อีเมล์',
            'title' => 'หัวข้อ',
            'message' => 'ข้อความ'
        );
    }

}
