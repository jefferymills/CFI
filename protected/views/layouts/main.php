<!doctype html itemscope itemtype="http://schema.org/Article">
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="no-js ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>College Football Infographic</title>
  <meta name="description" content="How does your team rank in this interactive College Football Infographic">

  <!-- Add the following three tags inside head. -->
<meta itemprop="name" content="College Football Infographic">
<meta itemprop="description" content="How does your team rank in this interactive College Football Infographic">
<meta itemprop="image" content="http://jefferymills.com/wp-content/uploads/2012/08/cfi-shot1.jpg">

  <meta name="viewport" content="width=device-width">

	<?php 
		$cs = Yii::app()->getClientScript();
		//javascript
		/*$cs->registerScriptFile(Yii::app()->baseUrl .'/js/libs/modernizr-2.5.3.js');*/
		$cs->registerScriptFile(Yii::app()->baseUrl .'/js/libs/paper.js');
		$cs->registerScriptFile('https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js');
	?>

	<?php
	  //css
	  $cs->registerCssFile(Yii::app()->baseUrl .'/css/style.css'); 

	?>
  	
  	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-27902408-1']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>

</head>

<body>
	 <!--[if lt IE 9]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->

	 <div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=400609336659837";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>

<div class="container" id="page">

	<header>

		<div class="hide_logo">

			<h1>College Football Infographic</h1>

		</div>

		<div class="map-title hide-map-title">
			
			<h2>Average Attendance</h2>

			<!-- <p class="description">As of 2012</p> -->

		</div>

	</header>

	<?php echo $content; ?>

	<footer>
		<div class="sharebar">

			<!-- Place this tag where you want the +1 button to render. -->
			<div class="g-plusone" data-size="medium"></div>

			<!-- Place this tag after the last +1 button tag. -->
			<script type="text/javascript">
			  (function() {
			    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
			    po.src = 'https://apis.google.com/js/plusone.js';
			    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
			  })();
			</script>

			<div class="fb-like" data-send="false" data-layout="button_count" data-width="90" data-show-faces="false"></div>

			<a href="https://twitter.com/share" class="twitter-share-button" data-text="College Football Infographic - where does your team stand?" data-hashtags="collegefootball">Tweet</a>
			<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


		</div>
  	</footer>

</div><!-- page -->
<script type="text/paperscript" canvas="themap" src="<?php echo Yii::app()->baseUrl; ?>/js/cfi-mini.js"></script>
</body>
</html>