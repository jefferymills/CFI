<?php

class m120818_195002_add_more_stat_columns extends CDbMigration
{
	
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->addColumn('teams', 'attendance', 'integer');
		$this->addColumn('teams', 'revenue', 'money');
		$this->addColumn('teams', 'all_americans', 'integer');

	}

	public function safeDown()
	{
		$this->dropColumn('teams', 'attendance');
		$this->dropColumn('teams', 'revenue');
		$this->dropColumn('teams', 'all_americans');
	}
	
}