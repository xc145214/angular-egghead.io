window.app = angular.module('app', [])
app = window.app

app.directive('zippy', () ->
	{
		restrict: 'E'
		transclude: true
		scope: {
			title: '@'
		}
		templateUrl: 'zippy.html'
		link: (scope) ->
			scope.isContentVisible = false;

			scope.toggleContent = () ->
				scope.isContentVisible = !scope.isContentVisible
				return

			return
	}
)

