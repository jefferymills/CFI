var CFI = CFI || {};

CFI.init = function(){
	CFI.addMap();
	CFI.getDots('stadium_capacity', function(data){
		CFI.dots = new CFI.addDots(data);
	});

	//console.log(dots);

	$('.logo').bind('click',function(){CFI.getDots('heismans')});

	return CFI.dots;

};

CFI.addMap = function(){
	var map = new Image();
	//map.src = "images/temp-map.png";
	map.src = "images/map.png";
	var raster = new Raster(map);
	raster.position = view.center;
};

CFI.addDots = function(teams){
	this.path = [];
	console.log(teams);
	if(teams){

		for (var i = teams.length - 1; i >= 0; i--) {
		   	this.path[i] = new Path.Circle(new Point(teams[i].x_position,teams[i].y_position), 1);
		    this.path[i].fillColor = '#' + teams[i].primary_color;
		    /*this.path[i].strokeWidth = 2;
		    this.path[i].strokeColor = '#' + teams[i].second_color;*/
		    this.path[i].opacity = 0.8;
		    this.path[i].newSize = CFI.getSize(teams[i], teams);
		    //console.log(CFI.getSize(teams[i], teams));

		}
	}
	    
}

CFI.getSize = function(team, teams){
	var most = teams[teams.length - 1].cat,
		current = team.cat,
		least = teams[0].cat,
		size = (((current - least)/most) * 45) + 5;

		console.log(team.short_name + ': ' + size);

	return size;
}

CFI.getDots = function(category, callback){
	$.ajax({
		url: 'index.php/site/dots?category=' + category,
		dataType: 'json',
		success: function(data){
			callback(data);
		}
	});
};

var Dots = CFI.init();

function onMouseMove(event){
		console.log('x: ' + event.point.x);
		console.log('y: ' + event.point.y);

		if(CFI.dots){
			for (var i = CFI.dots.path.length - 1; i >= 0; i--) {
				if(CFI.dots.path[i].bounds.contains(event.point) && CFI.dots.path[i].bounds.width > CFI.dots.path[i].newSize){
					//CFI.dots.path[i].scale(0.5);
					CFI.dots.path[i].opacity = 1;
				} else {
					CFI.dots.path[i].opacity = 0.8;
				}
			};
		}
	}

var growth = 1.03;
function onFrame(event){
	if(CFI.dots){
		for (var i = CFI.dots.path.length - 1; i >= 0; i--) {
			if(CFI.dots.path[i].bounds.width < CFI.dots.path[i].newSize){
				CFI.dots.path[i].scale(growth);
			}
		}
	}
}