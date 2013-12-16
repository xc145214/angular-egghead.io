window.app = angular.module('app', ['ngRoute'])
app = window.app

# this is where providers are configured
# the services are not available at this point
app.config(($routeProvider) ->
	$routeProvider.when('/', {
		templateUrl: 'app.html'
		controller:	'AppCtrl'
	}
	)
)

# this is where the services are available
# they are generated from the providers
app.controller('AppCtrl', ($scope, $route) ->
	$scope.model = {
		message: 'This is my app!!!'
	}
	return
)

