window.app = angular.module('app', ['ngRoute'])
app = window.app

# use colon to create url parameters
app.config(($routeProvider) ->
	$routeProvider.when('/map/:country/:state/:city', {
		templateUrl: 'app.html'
		controller:	'AppCtrl'
	}
	)
)

# use routeParams to access these parameters
app.controller('AppCtrl', ($scope, $routeParams) ->
	$scope.model = {
		message: 'Address: ' + $routeParams.city + ' ' +
		$routeParams.state + ' ' +
		$routeParams.country
	}
	return
)

