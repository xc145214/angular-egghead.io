window.app = angular.module('drinkApp', [])
app = window.app

app.controller('AppCtrl', ($scope) ->
	$scope.ctrlFlavor = "blackberry"
	return
)

app.directive('drink', () ->
	{
		scope: {
			flavor:"="
		}
		template: '<input type="text" ng-model="flavor"/>'
	}
)

