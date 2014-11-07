<?php

class JobsBranch extends CActiveRecord {

    public function tableName() {
        return 'jobs_branch';
    }

    public function rules() {
        return array(
            array('branch_en_name, branch_th_name, branch_kr_name', 'length', 'max' => 255),
            array('id, branch_en_name, branch_th_name, branch_kr_name', 'safe', 'on' => 'search'),
        );
    }

    public function relations() {
        return array(
        );
    }

    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'branch_en_name' => 'Branch En Name',
            'branch_th_name' => 'Branch Th Name',
            'branch_kr_name' => 'Branch Kr Name',
        );
    }

    public function search() {
        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('branch_en_name', $this->branch_en_name, true);
        $criteria->compare('branch_th_name', $this->branch_th_name, true);
        $criteria->compare('branch_kr_name', $this->branch_kr_name, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
