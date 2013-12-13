window.app = angular.module('twitterApp', [])
app = window.app

app.controller('AppCtrl', ($scope) ->
	$scope.loadMoreTweets = () ->
		alert('Loading tweets!')
		return

	$scope.deleteTweets = () ->
		alert('Deleting tweets!')
	return
)

app.directive('enter', () ->
	(scope, element, attrs) ->
		element.bind('mouseenter', ()->
			scope.$apply(attrs.enter)
		)
)