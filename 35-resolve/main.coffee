window.app = angular.module('app', ['ngRoute'])
app = window.app


app.config(($routeProvider) ->
	$routeProvider
	.when('/', {
		templateUrl: 'view/app.html'
		controller:	'AppCtrl'
		# list of promises - list of things that will happen before your controller
		# will intantiate and your template will load
		resolve: {
			# map to AppCtrl (not sure what the impact of this mapping is)
			# you can inject things into this function
			app: ($q, $timeout) ->
				defer = $q.defer()

				# defer loading for 2 seconds
				$timeout(() ->
					defer.resolve()
					return
				2000)

				#this is useful for using the $http service or anything before the
				# controller loads and the template renders

				defer.promise
		}
	})
	return
)


app.controller('AppCtrl', ($scope) ->

	$scope.model = {
		message: 'I\'m a great app!'
	}
	return
)

