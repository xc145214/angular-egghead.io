window.app = angular.module('drinkApp', [])
app = window.app

app.controller('AppCtrl', ($scope) ->
	$scope.ctrlFlavor = "blackberry"
	return
)

app.directive('drink', () ->
	{
		scope: {
			flavor:"@"
		}
		template: '<div>{{flavor}}</div>'
#		link: (scope, element, attrs) ->
#			scope.flavor = attrs.flavor
#			return
	}
)

