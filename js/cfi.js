var CFI = CFI || {};

CFI.init = function(){
	CFI.addMap();
	var Dots = new CFI.addDots();

	console.log(Dots.path);

	return Dots;

};

CFI.addMap = function(){
	var map = new Image();
	map.src = "images/temp-map.png";
	var raster = new Raster(map);
	raster.position = view.center;
};

CFI.addDots = function(){
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
//North 49°00′08.6″N 122°15′40″W 
//South 24°31′15″N 81°57′49″W) 
//East 44.817419°N 66.949895°W
//West 48°11.1′N 124°47.1′W)
//$(document).ready(function(){CFI.init();});

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