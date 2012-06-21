<?php

class m120611_021937_update_short_name_column extends CDbMigration
{
	
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
		$this->alterColumn('teams', 'short_name', 'string');
	}

	public function safeDown()
	{
		$this->alterColumn('teams', 'short_name', 'varchar(6)');
	}
	
}