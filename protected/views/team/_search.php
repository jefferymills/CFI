<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'short_name'); ?>
		<?php echo $form->textField($model,'short_name',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'city'); ?>
		<?php echo $form->textField($model,'city',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'state'); ?>
		<?php echo $form->textField($model,'state',array('size'=>2,'maxlength'=>2)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'conference'); ?>
		<?php echo $form->textField($model,'conference',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'primary_color'); ?>
		<?php echo $form->textField($model,'primary_color',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'second_color'); ?>
		<?php echo $form->textField($model,'second_color',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'x_position'); ?>
		<?php echo $form->textField($model,'x_position'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'y_position'); ?>
		<?php echo $form->textField($model,'y_position'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'national_championships'); ?>
		<?php echo $form->textField($model,'national_championships'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'stadium_capacity'); ?>
		<?php echo $form->textField($model,'stadium_capacity'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'winning_percentage'); ?>
		<?php echo $form->textField($model,'winning_percentage'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'top_5'); ?>
		<?php echo $form->textField($model,'top_5'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'top_10'); ?>
		<?php echo $form->textField($model,'top_10'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'top_25'); ?>
		<?php echo $form->textField($model,'top_25'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'heismans'); ?>
		<?php echo $form->textField($model,'heismans'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'attendance'); ?>
		<?php echo $form->textField($model,'attendance'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'revenue'); ?>
		<?php echo $form->textField($model,'revenue',array('size'=>19,'maxlength'=>19)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'all_americans'); ?>
		<?php echo $form->textField($model,'all_americans'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->