window.app = angular.module('app', ['ngRoute'])
app = window.app


app.config(($routeProvider) ->
	$routeProvider
	.when('/', {
		templateUrl: 'view/app.html'
		controller:	'ViewCtrl'
	}).when('/new', {
			templateUrl: 'view/new.html'
			controller: 'NewCtrl'
			resolve: {
				loadData: viewCtrl.loadData
			}
	})
	return
)

app.controller('AppCtrl', ($scope, $rootScope, $route, $location) ->
	$rootScope.$on('$routeChangeStart', (event, current, previous, rejection) ->
		# STEP 2
		#
		# at this point the path has already changed
		# this means that the routes have changed over so the previous route is
		# the one managed by the ViewCtrl while the current route is the one
		# managed by the NewCtrl
		#
		# the current route has not been fully set-up at this point as
		# we are at the start of the change route so the current.locals
		# have not been created and the promises for the route have not been
		# resolved
		console.log($scope, $rootScope, $route, $location)
		return
	)

	$rootScope.$on('$routeChangeSuccess', (event, current, previous, rejection) ->
		# STEP 3
		#
		# at this point we have completed the route change and
		# current.locals (with the template and loadData) has been created
		# BUT
		# current.locals has values but they haven't been filled in
		# so template is empty and loadData is undefined this means
		# that none of the promises of the route have been completed
		# also
		# the NewCtrl has not been instanciated yet and the DOM has not
		# yet been update
		console.log($scope, $rootScope, $route, $location)
		return
	)

	return
)

viewCtrl = app.controller('ViewCtrl', ($scope, $rootScope, $route, $location) ->
	$scope.changeRoute = () ->
		# STEP 1
		#
		# at this point the url has not changed
		# and thus the routes have not changed
		#
		# anything which you want to occur prior to the url
		# change must happen here
		console.log($scope)
		$location.path('/new')
		return
	return
)

app.controller('NewCtrl', ($scope, loadData, template) ->
	# STEP 4
	#
	# at this point we are setting up the controller and then have
	# completed the creating and executing the route has been complete
	# this means that the loadData and templates have been filled in - i.e.
	# that all of the promises have been completed
	console.log($scope, loadData, template)
	return
)

viewCtrl.loadData = ($q, $timeout) ->
	defer = $q.defer()

	$timeout(() ->
		defer.resolve({message: 'success'})
		return
	2000)

	defer.promise



