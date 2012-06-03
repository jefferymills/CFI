<?php

class m120603_203529_create_teams_table extends CDbMigration
{

	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->createTable('teams', array(
			'id' => 'pk',
			'name' => 'string NOT NULL',
			'short_name' => 'varchar(6) NOT NULL',
			'city' => 'string NOT NULL',
			'state' => 'varchar(2) NOT NULL',
			'conference' => 'string NOT NULL',
			'primary_color' => 'varchar(20) NOT NULL',
			'second_color' => 'varchar(20)',
			'x-position' => 'integer(4) NOT NULL',
			'y-position' => 'integer(4) NOT NULL',
			'national_championships' => 'integer(4) DEFAULT 0',
			'stadium_capacity' => 'integer(7) NOT NULL',
			'winning_percentage' => 'float'
		));
	}

	public function safeDown()
	{
		$this->dropTable('teams');
	}
	
}