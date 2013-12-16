window.app = angular.module('app', ['ngRoute'])
app = window.app

# when is like if route
# otherwise is else
app.config(($routeProvider) ->
	$routeProvider
	.when('/', {
		templateUrl: 'app.html'
		controller:	'AppCtrl'
	}).when('/pizza', {
			template: 'Yum!!'
	}).otherwise({
			template: 'This doesn\'t exist'
	})
	return
)


app.controller('AppCtrl', ($scope, $route) ->
	$scope.model = {
		message: 'This is my app!!!'
	}
	return
)

