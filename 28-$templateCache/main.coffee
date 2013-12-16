window.app = angular.module('app', [])
app = window.app

app.run(($templateCache) ->
	$templateCache.put('zippy.html', '<div>\n\t<h3 ng-click="toggleContent()">{{title}}</h3>\n\t<div ng-show="isContentVisible" ng-transclude></div>\n</div>')
	return

)

app.directive('zippy', ($templateCache) ->
	console.log($templateCache.get('zippy.html'))

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

