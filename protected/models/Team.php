<?php

/**
 * This is the model class for table "teams".
 *
 * The followings are the available columns in table 'teams':
 * @property integer $id
 * @property string $name
 * @property string $short_name
 * @property string $city
 * @property string $state
 * @property string $conference
 * @property string $primary_color
 * @property string $second_color
 * @property integer $x_position
 * @property integer $y_position
 * @property integer $national_championships
 * @property integer $stadium_capacity
 * @property double $winning_percentage
 * @property integer $top_5
 * @property integer $top_10
 * @property integer $top_25
 * @property integer $heismans
 * @property integer $attendance
 * @property string $revenue
 * @property integer $all_americans
 */
class Team extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Team the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'teams';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, city, state, conference, primary_color, x_position, y_position, stadium_capacity, winning_percentage', 'required'),
			array('x_position, y_position, national_championships, stadium_capacity, top_5, top_10, top_25, heismans, attendance, all_americans', 'numerical', 'integerOnly'=>true),
			array('winning_percentage', 'numerical'),
			array('name, short_name, city, conference', 'length', 'max'=>255),
			array('state', 'length', 'max'=>2),
			array('primary_color, second_color', 'length', 'max'=>20),
			array('revenue', 'length', 'max'=>19),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, name, short_name, city, state, conference, primary_color, second_color, x_position, y_position, national_championships, stadium_capacity, winning_percentage, top_5, top_10, top_25, heismans, attendance, revenue, all_americans', 'safe', 'on'=>'search'),
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
			'name' => 'Name',
			'short_name' => 'Short Name',
			'city' => 'City',
			'state' => 'State',
			'conference' => 'Conference',
			'primary_color' => 'Primary Color',
			'second_color' => 'Second Color',
			'x_position' => 'X Position',
			'y_position' => 'Y Position',
			'national_championships' => 'National Championships',
			'stadium_capacity' => 'Stadium Capacity',
			'winning_percentage' => 'Winning Percentage',
			'top_5' => 'Top 5',
			'top_10' => 'Top 10',
			'top_25' => 'Top 25',
			'heismans' => 'Heismans',
			'attendance' => 'Attendance',
			'revenue' => 'Revenue',
			'all_americans' => 'All Americans',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('short_name',$this->short_name,true);
		$criteria->compare('city',$this->city,true);
		$criteria->compare('state',$this->state,true);
		$criteria->compare('conference',$this->conference,true);
		$criteria->compare('primary_color',$this->primary_color,true);
		$criteria->compare('second_color',$this->second_color,true);
		$criteria->compare('x_position',$this->x_position);
		$criteria->compare('y_position',$this->y_position);
		$criteria->compare('national_championships',$this->national_championships);
		$criteria->compare('stadium_capacity',$this->stadium_capacity);
		$criteria->compare('winning_percentage',$this->winning_percentage);
		$criteria->compare('top_5',$this->top_5);
		$criteria->compare('top_10',$this->top_10);
		$criteria->compare('top_25',$this->top_25);
		$criteria->compare('heismans',$this->heismans);
		$criteria->compare('attendance',$this->attendance);
		$criteria->compare('revenue',$this->revenue,true);
		$criteria->compare('all_americans',$this->all_americans);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}