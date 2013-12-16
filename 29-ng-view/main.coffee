window.app = angular.module('app', ['ngRoute'])
app = window.app

# use the route provider to set-up the routes
# within your app
app.config(($routeProvider) ->
	$routeProvider.when('/', {
		templateUrl: 'app.html'
		controller:	'AppCtrl'
	}
	)
)

app.controller('AppCtrl', ($scope) ->
	$scope.model = {
		message: 'This is my app!!!'
	}
	return
)

