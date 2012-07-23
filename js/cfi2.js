(function(){

	var cfi = window.cfi = {

		defaults: {
			category: 'stadium_capacity'
		},

		teams: [],


		getDots: function(category, callback){

			var category = category || this.defaults.category;

			var callback = function(data){
				this.cfi.teams = data;
			};

			$.ajax({
				url: 'index.php/site/dots?category=' + category,
				dataType: 'json',
				success: function(data){
					callback(data);
				}
			});

		}

	};

})();

console.log(cfi.getDots());
console.log(cfi.teams);