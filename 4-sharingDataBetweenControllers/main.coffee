myApp = angular.module('myApp', [])
window.myApp = myApp
myApp.factory('Data', () -> return {messages: "I'm data from a service"})

window.FirstCtrl = ($scope, Data) ->
	$scope.data = Data
	return

window.SecondCtrl = ($scope, Data) ->
	$scope.data = Data
	return
