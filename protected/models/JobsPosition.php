<?php
class JobsPosition extends CActiveRecord{
    
    public function tableName() {
        return 'jobs_position';
    }
    
    public function search() {
        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('position_en_name', $this->position_en_name, true);
        $criteria->compare('position_th_name', $this->position_th_name, true);
        $criteria->compare('position_kr_name', $this->position_kr_name, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }
    
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
}

