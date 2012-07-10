var CFI = CFI || {};

CFI.init = function(){
	CFI.getTeams('heismans', function(teams){
		CFI.teams = teams;
	});
};

CFI.team = function(options){

};

CFI.getTeams = function(category, callback){
	var teams;
	$.ajax({
		url: 'index.php/site/dots?category=' + category,
		dataType: 'json',
		success: function(data){
			callback(data);
		}
	});
};

CFI.init();