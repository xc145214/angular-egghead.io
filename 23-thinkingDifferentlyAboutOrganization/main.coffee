window.app = angular.module('phoneApp', [])
app = window.app

phoneAppStuff = {}

phoneAppStuff.controllers = {}

phoneAppStuff.controllers.AppCtrl = ($scope) ->
	this.sayHi = () ->
		alert("hi!")
		return

	$scope.AppCtrl = this

app.controller(phoneAppStuff.controllers)

phoneAppStuff.directives = {}
phoneAppStuff.directives.panel = () ->
	{
		restrict: 'E'
	}

app.directive(phoneAppStuff.directives)


