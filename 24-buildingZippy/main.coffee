window.app = angular.module('app', [])
app = window.app

app.directive('zippy', () ->
	{
		restrict: 'E'
		transclude: true
		scope: {
			title: '@'
		}
		template: '<div>\n\t<h3 ng-click="toggleContent()">{{title}}</h3>\n\t<div ng-show="isContentVisible" ng-transclude></div>\n</div>'
		link: (scope) ->
			scope.isContentVisible = false;

			scope.toggleContent = () ->
				scope.isContentVisible = !scope.isContentVisible
				return

			return
	}
)

