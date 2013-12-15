window.app = angular.module('app', [])
app = window.app

# this is using dependency injection
# order does not matter, the name matters
app.controller('MyCtrl', ($scope, $http) ->
	console.log(a)
	return
)

# this is using dependency injection
# this version we use an array and establish our own order
# this protects against minification where the variable
# names would be replaced, however strings would not
app.controller('MyCtrl2', ['$scope', '$http', (a, b) ->
	console.log(a)
	return
]
)

# this is using dependency injection
# like in our controlled above
app.directive('myDirective', ($http, $parse) ->
	{
		# this is not using dependency injection
		# order is important, name does not matter
		link: (scope, element, attrs) ->
			console.log(element)
			return
	}
)
