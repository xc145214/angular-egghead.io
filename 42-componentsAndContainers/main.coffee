window.app = angular.module('app', ['ngRoute'])
app = window.app

# this is an example of a component
# usually display/processes the data that is passed into the attributes
# and that's all you have to worry about
app.directive('clock', () ->
	{
		restrict: 'E'
		scope: {
			timezone: '@'
		}
		template: '<div>{{timestamp}}</div>'
		link: (scope) ->
			scope.timestamp = moment().tz(scope.timezone).format('dddd, MMMM Do YYYY, h:mm:ss a')
			return
	}
)

# this is an example of a container
# usually contains other items by using transclusion
app.directive('panel', () ->
	{
		restrict: 'E'
		transclude: true
		scope: {
			title: '@'
		}
		template: '<div style="border: 3px solid #000000">\n\t<div class="alert-box">{{title}}</div>\n\t<div ng-transclude></div>\n</div>'
	}
)