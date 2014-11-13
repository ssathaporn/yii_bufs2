<?php

/**
 * This is the model class for table "jobs_education_degree".
 *
 * The followings are the available columns in table 'jobs_education':
 * @property integer $id
 * @property string $education_en_name
 * @property string $education_th_name
 * @property string $education_kr_name
 */
class JobsEducationDegree extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'jobs_education_degree';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('degree_en_name, degree_th_name, degree_kr_name', 'length', 'max' => 255),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, degree_en_name, degree_th_name, degree_kr_name', 'safe', 'on' => 'search'),
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
            'degree_en_name' => 'Education En Name',
            'degree_th_name' => 'Education Th Name',
            'degree_kr_name' => 'Education Kr Name',
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
        $criteria->compare('degree_en_name', $this->degree_en_name, true);
        $criteria->compare('degree_th_name', $this->degree_th_name, true);
        $criteria->compare('degree_kr_name', $this->degree_kr_name, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return JobsEducation the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
