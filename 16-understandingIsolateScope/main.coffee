window.app = angular.module('choreApp', [])
app = window.app

app.controller('ChoreCtrl', ($scope) ->
	$scope.logChore = (chore) ->
		alert(chore + ' is done')
		return
)

app.directive('kid', () ->
	{
		restrict: 'E'
		scope: {
			done: '&'
		}
		template: '<input type="text" ng-model="chore"/>' +
		'{{chore}}' +
		'<br>' +
		'<div class="button" ng-click="done({theChore:chore})">I\'m done!</div>'
	}
)