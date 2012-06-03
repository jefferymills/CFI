<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title><?php echo CHtml::encode($this->pageTitle); ?></title>
  <meta name="description" content="">

  <meta name="viewport" content="width=device-width">

	<?php 
		$cs = Yii::app()->getClientScript();
		//javascript
		$cs->registerScriptFile(Yii::app()->baseUrl .'/js/libs/modernizr-2.5.3.js');
		$cs->registerScriptFile(Yii::app()->baseUrl .'/js/libs/paper.js');
		$cs->registerScriptFile('https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js');
	?>

	<?php
	  //css
	  $cs->registerCssFile(Yii::app()->baseUrl .'/css/style.css'); 

	?>
  

</head>

<body>
	 <!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->

<div class="container" id="page">

	<header>

		<div class="top-bar"></div>

		<div class="logo">

			<h1><?php echo CHtml::encode($this->pageTitle); ?></h1>

		</div>

		<div class="map-title">
			
			<h2>Stadium Capacity</h2>

			<p class="description">As of 2012</p>

		</div>

	</header>

	<div role="main">

		<nav>

			<button type="button" class="nav-button"></button>
			
			<ul>
				<li>National Championships</li>
				<li>Top 10 Finishes</li>
				<li>Total Winning Percentage</li>
				<li>BCS Bowl Wins</li>
				<li>Annual Revenue</li>
				<li class="current">Stadium Capacity</li>
				<li>Top 25 Finishes</li>
			</ul>

		</nav>

		<div class="map-container">
			
			<canvas id="themap" width="960" height="570"></canvas>

		</div>

		<?php /*echo $content;*/ ?>

  	</div>

	<footer>

  	</footer>

</div><!-- page -->
<script type="text/paperscript" canvas="themap" src="<?php echo Yii::app()->baseUrl; ?>/js/cfi.js"></script>
</body>
</html>