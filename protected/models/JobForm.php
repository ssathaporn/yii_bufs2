<?php
class JobForm extends CFormModel{
    
    public $sl_position;
    public $sl_nationality;
    public $sl_age;
    public $sl_gender;
    public $sl_education;
    public $sl_branch;
    public $sl_language;
    
    public function attributeLabels() {
        return array(
            'sl_position' => 'ตำแหน่งงานที่ต้องการ',
            'sl_nationality' => 'สัญชาติ',
            'sl_age' => 'อายุ',
            'sl_gender' => 'เพศ',
            'sl_education' => 'ระดับการศึกษา',
            'sl_branch' => 'สาขาวิชาที่จบ',
            'sl_language' => 'ความสามารถด้านภาษา'
        );
    }
}

