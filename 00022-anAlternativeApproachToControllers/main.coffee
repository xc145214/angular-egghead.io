window.app = angular.module('phoneApp', [])
app = window.app

app.controller('AppCtrl', ($scope) ->
	this.sayHi = () ->
		alert("hi!")
		return

	$scope.AppCtrl = this
)


