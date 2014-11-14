<?php
class Jobs extends CActiveRecord {
    
    public $n;

    public function tableName() {
        return 'jobs';
    }

    public function rules() {
        return array(
            array('age, nationality, position_category, education, education_category, language1, language2, image', 'numerical', 'integerOnly' => true),
            array('local_fname, local_lname, en_fname, en_lname, interest_position1, interest_position2, interest_position3', 'length', 'max' => 255),
            array('gender', 'length', 'max' => 6),
            array('created_date', 'safe'),
            array('id, local_fname, local_lname, en_fname, en_lname, age, gender, nationality, interest_position1, interest_position2, interest_position3, position_category, education, education_category, language1, language2, image, created_date', 'safe', 'on' => 'search'),
        );
    }

    public function relations() {
        return array(
            'nation' => array(self::BELONGS_TO, 'JobsNationality', 'nationality'),
            'edu' => array(self::BELONGS_TO, 'JobsEducationDegree', 'education'),
            'edu_cate' => array(self::BELONGS_TO, 'JobsEducationCategory', 'education_category'),
            'lang1' => array(self::BELONGS_TO, 'JobsLanguage', 'language1'),
            'lang2' => array(self::BELONGS_TO, 'JobsLanguage', 'language2'),
            'posi' => array(self::BELONGS_TO, 'JobsPosition', 'position_category'),
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
            'gender' => 'Gender',
            'nationality' => 'Nationality',
            'interest_position1' => 'Interest Position1',
            'interest_position2' => 'Interest Position2',
            'interest_position3' => 'Interest Position3',
            'position_category' => 'Position Category',
            'education' => 'Education',
            'education_category' => 'Education Category',
            'language1' => 'Language1',
            'language2' => 'Language2',
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
        $criteria->compare('gender', $this->gender, true);
        $criteria->compare('nationality', $this->nationality);
        $criteria->compare('interest_position1', $this->interest_position1, true);
        $criteria->compare('interest_position2', $this->interest_position2, true);
        $criteria->compare('interest_position3', $this->interest_position3, true);
        $criteria->compare('position_category', $this->position_category);
        $criteria->compare('education', $this->education);
        $criteria->compare('education_category', $this->education_category);
        $criteria->compare('language1', $this->language1);
        $criteria->compare('language2', $this->language2);
        $criteria->compare('image', $this->image);
        $criteria->compare('created_date', $this->created_date, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
    
    public static function getThaiNation($n = 'th') {
        $nation = array(
            'th' => 'ไทย',
            'kr' => 'เกาหลี'
        );

        return $nation[$n];
    }


}
