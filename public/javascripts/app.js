(function(){
	function init(){
		$('#search').click(getUserData);
	}

	function getUserData(){
		var username = $('#username_input').val();

		$.get('/user_info', {username: username})
		.done(function(data){
			$('#results_container').text(JSON.stringify(data));
		});
	}

	window.App = {
		init: init
	}
})(window);
