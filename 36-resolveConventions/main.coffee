window.app = angular.module('app', ['ngRoute'])
app = window.app


app.config(($routeProvider) ->
	$routeProvider
	.when('/', {
		templateUrl: 'view/app.html'
		controller:	'AppCtrl'
		resolve: {
			# when using resolve with a controller (like AppCtrl)
			# it makes it easier to understand what is happening without
			# lots of in-line code particular for multiple functions which
			# must be run
			#
			# when running multiple items they will be fired in 'parallel'
			# and not in 'sequence'
			loadData: appCtrl.loadData
			prepData: appCtrl.prepData
		}
	})
	return
)


# organize your functions relating to the controller within
# the controller object
appCtrl = app.controller('AppCtrl', ($scope, $route) ->
	# can access the values passed to resolve()
	# in the route though most likely best to
	# access these through a service
	console.log($route.current.locals)
	$scope.model = {
		message: 'I\'m a great app!'
	}
	return
)

appCtrl.loadData = ($q, $timeout) ->
	defer = $q.defer()

	# defer loading for 2 seconds
	$timeout(() ->
		defer.resolve('loadData')
		return
	2000)

	defer.promise

appCtrl.prepData = ($q, $timeout) ->
	defer = $q.defer()

	# defer loading for 2 seconds
	$timeout(() ->
		defer.resolve('prepData')
		return
	2000)

	defer.promise

