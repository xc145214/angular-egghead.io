window.app = angular.module('app', ['ngRoute'])
app = window.app

# use redirectTo to redirect the url of the page
app.config(($routeProvider) ->
	$routeProvider
	.when('/', {
		templateUrl: 'app.html'
		controller:	'AppCtrl'
	}).when('/pizza/:crust/:toppings', {
			# or you can use a function to route more dynamically
			redirectTo: (routeParams, path, search) ->
				console.log(routeParams)  # the parameters
				console.log(path)         # the url path for the application
				console.log(search)       # the query string for the URL

				'/' + routeParams.crust
	}).when('/deep', {
			template: 'Deep dish'
	}).otherwise({
			# you can use directly to point to anther static url
			# this is the most common usage
			redirectTo: '/'
	})
	return
)


app.controller('AppCtrl', ($scope) ->
	$scope.model = {
		message: 'This is my app!!!'
	}
	return
)

