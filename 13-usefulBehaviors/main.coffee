window.app = angular.module('behaviorApp', [])
app = window.app

app.directive('enter', () ->
	(scope, element, attrs) ->
		element.bind('mouseenter', () ->
			element.addClass(attrs.enter)
			return
		)
)

app.directive('leave', () ->
	(scope, element, attrs) ->
		element.bind('mouseleave', () ->
			element.removeClass(attrs.leave)
			return
		)
)
