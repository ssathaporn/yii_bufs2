<?php

/**
 * This is the model class for table "jobs".
 *
 * The followings are the available columns in table 'jobs':
 * @property integer $id
 * @property string $local_fname
 * @property string $local_lname
 * @property string $en_fname
 * @property string $en_lname
 * @property integer $age
 * @property string $gender
 * @property integer $nationality
 * @property string $interest_position1
 * @property string $interest_position2
 * @property string $interest_position3
 * @property integer $education
 * @property integer $education_category
 * @property integer $language1
 * @property integer $language2
 * @property integer $image
 * @property string $created_date
 */
class Jobs extends CActiveRecord {
    
    public $n;

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'jobs';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('age, nationality, education, education_category, language1, language2, image', 'numerical', 'integerOnly' => true),
            array('local_fname, local_lname, en_fname, en_lname, interest_position1, interest_position2, interest_position3', 'length', 'max' => 255),
            array('gender', 'length', 'max' => 6),
            array('created_date', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, local_fname, local_lname, en_fname, en_lname, age, gender, nationality, interest_position1, interest_position2, interest_position3, education, education_category, language1, language2, image, created_date', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
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
            'education' => 'Education',
            'education_category' => 'Education Category',
            'language1' => 'Language1',
            'language2' => 'Language2',
            'image' => 'Image',
            'created_date' => 'Created Date',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     *
     * Typical usecase:
     * - Initialize the model fields with values from filter form.
     * - Execute this method to get CActiveDataProvider instance which will filter
     * models according to data in model fields.
     * - Pass data provider to CGridView, CListView or any similar widget.
     *
     * @return CActiveDataProvider the data provider that can return the models
     * based on the search/filter conditions.
     */
    public function search() {
        // @todo Please modify the following code to remove attributes that should not be searched.

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

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Jobs the static model class
     */
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
