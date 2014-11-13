<?php

/**
 * This is the model class for table "jobs_nationality".
 *
 * The followings are the available columns in table 'jobs_nationality':
 * @property integer $id
 * @property string $nation_en_name
 * @property string $nation_th_name
 * @property string $nation_kr_name
 */
class JobsNationality extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'jobs_nationality';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nation_en_name, nation_th_name, nation_kr_name', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, nation_en_name, nation_th_name, nation_kr_name', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'nation_en_name' => 'Nation En Name',
			'nation_th_name' => 'Nation Th Name',
			'nation_kr_name' => 'Nation Kr Name',
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
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('nation_en_name',$this->nation_en_name,true);
		$criteria->compare('nation_th_name',$this->nation_th_name,true);
		$criteria->compare('nation_kr_name',$this->nation_kr_name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return JobsNationality the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
