window.app = angular.module('phoneApp', [])
app = window.app

app.controller('AppCtrl', ($scope) ->
	$scope.callHome = (message) ->
		alert(message)
	return
)

app.directive("phone", () ->
	{
		scope: {
			dial: '&'
		}
		template: '<input type="text" ng-model="value"/>' +
		'<div class="button" ng-click="dial({message:value})">Call Home!</div>'
	}
)
