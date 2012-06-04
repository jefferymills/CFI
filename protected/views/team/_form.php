<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'team-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'short_name'); ?>
		<?php echo $form->textField($model,'short_name',array('size'=>6,'maxlength'=>6)); ?>
		<?php echo $form->error($model,'short_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'city'); ?>
		<?php echo $form->textField($model,'city',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'city'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'state'); ?>
		<?php echo $form->textField($model,'state',array('size'=>2,'maxlength'=>2)); ?>
		<?php echo $form->error($model,'state'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'conference'); ?>
		<?php echo $form->textField($model,'conference',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'conference'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'primary_color'); ?>
		<?php echo $form->textField($model,'primary_color',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'primary_color'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'second_color'); ?>
		<?php echo $form->textField($model,'second_color',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'second_color'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'x_position'); ?>
		<?php echo $form->textField($model,'x_position'); ?>
		<?php echo $form->error($model,'x_position'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'y_position'); ?>
		<?php echo $form->textField($model,'y_position'); ?>
		<?php echo $form->error($model,'y_position'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'national_championships'); ?>
		<?php echo $form->textField($model,'national_championships'); ?>
		<?php echo $form->error($model,'national_championships'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'stadium_capacity'); ?>
		<?php echo $form->textField($model,'stadium_capacity'); ?>
		<?php echo $form->error($model,'stadium_capacity'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'winning_percentage'); ?>
		<?php echo $form->textField($model,'winning_percentage'); ?>
		<?php echo $form->error($model,'winning_percentage'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'top_5'); ?>
		<?php echo $form->textField($model,'top_5'); ?>
		<?php echo $form->error($model,'top_5'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'top_10'); ?>
		<?php echo $form->textField($model,'top_10'); ?>
		<?php echo $form->error($model,'top_10'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'top_25'); ?>
		<?php echo $form->textField($model,'top_25'); ?>
		<?php echo $form->error($model,'top_25'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'heismans'); ?>
		<?php echo $form->textField($model,'heismans'); ?>
		<?php echo $form->error($model,'heismans'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->