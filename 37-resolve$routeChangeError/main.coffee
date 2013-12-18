window.app = angular.module('app', ['ngRoute'])
app = window.app


app.config(($routeProvider) ->
	$routeProvider
	.when('/', {
		templateUrl: 'view/app.html'
		controller:	'ViewCtrl'
		resolve: {
			loadData: appCtrl.loadData # because this fails the route itself is never loaded
		}
	})
	return
)


# using an external appCtrl which sits outside of the viewCtrl
# we can handler error scenarios
# here we catch the $routeChangeError and are able to do something about it
appCtrl = app.controller('AppCtrl', ($rootScope) ->
	$rootScope.$on('$routeChangeError', (event, current, previous, rejection) ->
		console.log(event)      # the event object which was fired
		console.log(current)    # the current route object
		console.log(previous)   # the previous route object
		console.log(rejection)  # message passed to the reject() method
		return
	)
	return
)

viewCtrl = app.controller('ViewCtrl', ($scope, $route) ->
	console.log($route.current.locals)
	$scope.model = {
		message: 'I\'m a great app!'
	}
	return
)

viewCtrl.loadData = ($q, $timeout) ->
	defer = $q.defer()

	# defer loading for 2 seconds
	$timeout(() ->
		# if we reject here then we will never instanciate the view's
		# template or controller and thus we have no control
		#
		# this simulates a failure in our loading
		defer.reject('your network is down')  # we can pass a message about the rejection
		return
	500)

	defer.promise

