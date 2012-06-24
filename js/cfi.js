var CFI = CFI || {};

CFI.init = function(){
	//CFI.addMap();
	CFI.getDots('stadium_capacity', function(data){
		CFI.dots = new CFI.addDots(data);
		//console.log(CFI.dots);
	});

	//console.log(dots);

	$('.logo').bind('click',function(){CFI.getDots('heismans')});

	return CFI.dots;

};

/*CFI.addMap = function(){
	var map = new Image();
	//map.src = "images/temp-map.png";
	map.src = "images/map.png";
	var raster = new Raster(map);
	raster.position = view.center;
};*/

CFI.addDots = function(teams){
	this.path = [];
	if(teams){
		for (var i = teams.length - 1; i >= 0; i--) {
		   	this.path[i] = new Path.Circle(new Point(teams[i].x_position,teams[i].y_position), 1);
		    this.path[i].fillColor = '#' + teams[i].primary_color;
		    /*this.path[i].strokeWidth = 2;
		    this.path[i].strokeColor = '#' + teams[i].second_color;*/
		    this.path[i].opacity = 0.8;
		    this.path[i].newSize = CFI.getSize(teams[i], teams);
		    this.path[i].teamid = teams[i].id;
		    this.path[i].team = teams[i];

		}
	}
	    
}

CFI.getSize = function(team, teams){
	var most = teams[teams.length - 1].cat,
		current = team.cat,
		least = teams[0].cat,
		size = (((current - least)/most) * 45) + 5;

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
var selected = 0;
function onMouseMove(event){
		//console.log('x: ' + event.point.x);
		//console.log('y: ' + event.point.y);
		
		if(CFI.dots){
			selected = 0;
			for (var i = 0; i < CFI.dots.path.length; i++) {
				if(CFI.dots.path[i].bounds.contains(event.point) && CFI.dots.path[i].bounds.width > CFI.dots.path[i].newSize && selected === 0){
					//CFI.dots.path[i].scale(0.5);
					//console.log('cool');
					//document.body.style.cursor = 'pointer';
					CFI.dots.path[i].opacity = 1;
					var modalX = 15;
					if(window.mouseXPos > ($(document).width()/2) - 70){
						modalX = -185;
					}
					$('.team_modal').attr('id', 'team' + i ).css({
						left: window.mouseXPos + modalX,
						top: window.mouseYPos - 160,
						borderBottom: '5px solid #' + CFI.dots.path[i].team.second_color
					}).addClass('visible');

					$('.team_info').css('backgroundColor', '#' + CFI.dots.path[i].team.primary_color);
					$('.team_name').html(CFI.dots.path[i].team.short_name);
					$('.team_location').html(CFI.dots.path[i].team.city + ', ' + CFI.dots.path[i].team.state);
					$('.team_conference').html(CFI.dots.path[i].team.conference);
					$('.category_number').html(addCommas(CFI.dots.path[i].team.cat));
					selected = 1;
					//break;
				} else {
					//console.log('no');
					//document.body.style.cursor = 'default';
					CFI.dots.path[i].opacity = 0.8;
					$('#team' + i).removeClass('visible');
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

function addCommas(nStr)
{
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}

$(document).ready(function(){
   $('#themap').mousemove(function(e){
      window.mouseXPos = e.pageX;
      window.mouseYPos = e.pageY;
   }); 
});
