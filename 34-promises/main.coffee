window.app = angular.module('app', ['ngRoute'])
app = window.app


app.config(($routeProvider) ->
	$routeProvider
	.when('/', {
		templateUrl: 'app.html'
		controller:	'AppCtrl'
	})
	return
)


app.controller('AppCtrl', ($scope, $q) ->

	defer = $q.defer();

	# create promise for something which will happen later
	defer.promise.then((weapon) ->
		alert('You can have my ' + weapon)

		# the return will be the parameter passed
		# into the function of the next then() call
		# this allows for chaining
		'bow'
	).then((weapon) ->
		alert('And my ' + weapon)
		'axe'
	).then((weapon) ->
		alert('My ' + weapon + 'as well')
		return
	)

	# this makes 'later' now, as is now now
	# defer.resolve()
	defer.resolve('sword')  # can also be passed parameters

	$scope.model = {
		message: 'This is my app!!!'
	}
	return
)

