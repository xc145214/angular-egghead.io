window.myApp = angular.module('myApp', [])
window.myApp.factory('Data', () -> {message: "I'm data from a service"})

window.FirstCtrl = ($scope, Data) ->
	$scope.data = Data
	return

window.SecondCtrl = ($scope, Data) ->
	$scope.data = Data

	$scope.reversedMessage = (message) ->
		 message.split("").reverse().join("")

	return