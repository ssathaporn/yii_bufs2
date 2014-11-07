<?php

class Jobs extends CActiveRecord {

    public function tableName() {
        return 'jobs';
    }

    public function rules() {
        return array(
            array('age, interest_job1, interest_job2, interest_job3, education, education_branch, image', 'numerical', 'integerOnly' => true),
            array('local_fname, local_lname, en_fname, en_lname', 'length', 'max' => 255),
            array('nationality', 'length', 'max' => 2),
            array('gender', 'length', 'max' => 6),
            array('created_date', 'safe'),
            array('id, local_fname, local_lname, en_fname, en_lname, age, nationality, gender, interest_job1, interest_job2, interest_job3, education, education_branch, image, created_date', 'safe', 'on' => 'search'),
        );
    }

    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'local_fname' => 'Local Fname',
            'local_lname' => 'Local Lname',
            'en_fname' => 'En Fname',
            'en_lname' => 'En Lname',
            'age' => 'Age',
            'nationality' => 'Nationality',
            'gender' => 'Gender',
            'interest_job1' => 'Interest Job1',
            'interest_job2' => 'Interest Job2',
            'interest_job3' => 'Interest Job3',
            'education' => 'Education',
            'education_branch' => 'Education Branch',
            'image' => 'Image',
            'created_date' => 'Created Date',
        );
    }

    public function search() {
        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('local_fname', $this->local_fname, true);
        $criteria->compare('local_lname', $this->local_lname, true);
        $criteria->compare('en_fname', $this->en_fname, true);
        $criteria->compare('en_lname', $this->en_lname, true);
        $criteria->compare('age', $this->age);
        $criteria->compare('nationality', $this->nationality, true);
        $criteria->compare('gender', $this->gender, true);
        $criteria->compare('interest_job1', $this->interest_job1);
        $criteria->compare('interest_job2', $this->interest_job2);
        $criteria->compare('interest_job3', $this->interest_job3);
        $criteria->compare('education', $this->education);
        $criteria->compare('education_branch', $this->education_branch);
        $criteria->compare('image', $this->image);
        $criteria->compare('created_date', $this->created_date, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
