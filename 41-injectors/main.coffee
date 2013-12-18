window.app = angular.module('app', ['ngRoute'])
app = window.app

app.factory('game', () ->
	{
		title: 'StarCraft'
	}
)

# invoke() method allows you to inject providers
# into your arbirary function
# this is
angular.injector(["app"]).invoke((game) ->
	alert('First: ' + game.title)
	return
)

# there is a single $injector per module
app.controller('AppCtrl', ($scope, $injector) ->

	# works using the $injector as well,
	# though this is rather meta as we've injected the $injector
	$injector.invoke((game) ->
		$scope.title = game.title
		alert('Second: ' + game.title)
		return
	)
	return
)