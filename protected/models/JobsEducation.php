<?php

class JobsEducation extends CActiveRecord {

    public function tableName() {
        return 'jobs_education';
    }
    
    public function search() {
        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('education_en_name', $this->education_en_name, true);
        $criteria->compare('education_th_name', $this->education_th_name, true);
        $criteria->compare('education_kr_name', $this->education_kr_name, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
