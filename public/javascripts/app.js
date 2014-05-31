(function(){
	function init(){
		console.log('init!');
		jQuery('#search').click(doThings);
	}

	function doThings(){
		console.log('doing things!');
	}

	window.App = {
		init: init
	}
})(window);
