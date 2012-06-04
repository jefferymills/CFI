var CFI = CFI || {};

CFI.init = function(){
	CFI.addMap();

	$('.logo').bind('click',function(){CFI.getDots('heismans')});
	var Dots = new CFI.addDots();

	return Dots;

};

CFI.addMap = function(){
	var map = new Image();
	map.src = "images/temp-map.png";
	var raster = new Raster(map);
	raster.position = view.center;
};

CFI.addDots = function(teams){
	this.path = [];
	for (var i = 100 - 1; i >= 0; i--) {
	
	   	this.path[i] = new Path.Circle(new Point(Math.random() * 960,Math.random() * 570), 5);
	    this.path[i].fillColor = '#0000ff';
	    /*this.path[i].strokeWidth = 3;
	    this.path[i].strokeColor = '#00ff00';*/
	    this.path[i].opacity = 0.5;
	    this.path[i].newSize = (Math.random() * 40) + 5;

	};
	    
}

CFI.getDots = function(category){
	$.ajax({
		url: 'index.php/dots/category',
		dataType: 'json',
		success: function(data){
			console.log(data);
		}
	})
};

var Dots = CFI.init();

function onMouseMove(event){
	console.log('x: ' + event.point.x);
	console.log('y: ' + event.point.y);
	for (var i = Dots.path.length - 1; i >= 0; i--) {
		if(Dots.path[i].bounds.contains(event.point) && Dots.path[i].bounds.width > Dots.path[i].newSize){
			Dots.path[i].scale(0.5);
		}
	};
}

var growth = 1.03;
function onFrame(event){
	for (var i = Dots.path.length - 1; i >= 0; i--) {
		if(Dots.path[i].bounds.width < Dots.path[i].newSize){
			Dots.path[i].scale(growth);
		}
	};
}