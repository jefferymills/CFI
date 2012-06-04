<?php

class TeamTest extends WebTestCase
{
	public $fixtures=array(
		'teams'=>'Team',
	);

	public function testShow()
	{
		$this->open('?r=team/view&id=1');
	}

	public function testCreate()
	{
		$this->open('?r=team/create');
	}

	public function testUpdate()
	{
		$this->open('?r=team/update&id=1');
	}

	public function testDelete()
	{
		$this->open('?r=team/view&id=1');
	}

	public function testList()
	{
		$this->open('?r=team/index');
	}

	public function testAdmin()
	{
		$this->open('?r=team/admin');
	}
}
