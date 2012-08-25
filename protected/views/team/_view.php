<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('short_name')); ?>:</b>
	<?php echo CHtml::encode($data->short_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('city')); ?>:</b>
	<?php echo CHtml::encode($data->city); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('state')); ?>:</b>
	<?php echo CHtml::encode($data->state); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('conference')); ?>:</b>
	<?php echo CHtml::encode($data->conference); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('primary_color')); ?>:</b>
	<?php echo CHtml::encode($data->primary_color); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('second_color')); ?>:</b>
	<?php echo CHtml::encode($data->second_color); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('x_position')); ?>:</b>
	<?php echo CHtml::encode($data->x_position); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('y_position')); ?>:</b>
	<?php echo CHtml::encode($data->y_position); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('national_championships')); ?>:</b>
	<?php echo CHtml::encode($data->national_championships); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('stadium_capacity')); ?>:</b>
	<?php echo CHtml::encode($data->stadium_capacity); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('winning_percentage')); ?>:</b>
	<?php echo CHtml::encode($data->winning_percentage); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('top_5')); ?>:</b>
	<?php echo CHtml::encode($data->top_5); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('top_10')); ?>:</b>
	<?php echo CHtml::encode($data->top_10); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('top_25')); ?>:</b>
	<?php echo CHtml::encode($data->top_25); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('heismans')); ?>:</b>
	<?php echo CHtml::encode($data->heismans); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('attendance')); ?>:</b>
	<?php echo CHtml::encode($data->attendance); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('revenue')); ?>:</b>
	<?php echo CHtml::encode($data->revenue); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('all_americans')); ?>:</b>
	<?php echo CHtml::encode($data->all_americans); ?>
	<br />

	*/ ?>

</div>