window.myApp = angular.module('myApp', [])
myApp = window.myApp

myApp.factory('Data', () -> {message: "I'm data from a service"})

myApp.filter('reverse', (Data) ->
	(text) -> text.split("").reverse().join("") + Data.message
)

window.FirstCtrl = ($scope, Data) ->
	$scope.data = Data
	return

window.SecondCtrl = ($scope, Data) ->
	$scope.data = Data
	return