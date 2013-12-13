window.app = angular.module('phoneApp', [])
app = window.app

app.controller('AppCtrl', ($scope) ->
	$scope.leaveVoiceMail = (number, message) ->
		alert('Number: ' + number + ' said: ' + message)
		return
	return
)

app.directive("phone", () ->
	{
		restrict: 'E'
		scope: {
			number: '@'
			network: '='
			makeCall: '&'
		}
		template: '<div class="panel">Number {{number}} Network: <select ng-model="network" ng-options="net for net in networks"></select></div>' +
		'<input type="text" ng-model="value">' +
		'<div class="button" ng-click="makeCall({number: number, message: value})">Call</div>'

		link: (scope) ->
			scope.networks = ['Verizon', 'AT&T', 'T-Mobile', 'Sprint']
			scope.network = scope.networks[0]
			return
	}
)
