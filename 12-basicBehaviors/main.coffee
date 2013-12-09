window.app = angular.module('behaviorApp', [])
app = window.app

app.directive('enter', () ->
	(scope, element) ->
		element.bind('mouseenter', () ->
			console.log('I am inside of you!')
			return
		)
)

app.directive('leave', () ->
	(scope, element) ->
		element.bind('mouseleave', () ->
			console.log('I am leaving on a jetplane!')
			return
		)
)
