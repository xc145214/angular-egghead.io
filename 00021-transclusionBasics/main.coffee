window.app = angular.module('phoneApp', [])
app = window.app

app.controller('AppCtrl', ($scope) ->

	return
)

app.directive("panel", () ->
	{
		restrict: 'E'
		transclude: true
		template: '<div class="panel" ng-transclude>This is a panel component!</div>'
	}
)
