window.app = angular.module('superhero', [])
app = window.app

app.directive('superman', () ->
	{
		restrict: 'A'
		link: () ->
			alert('I am working stronger!')
	}
)

app.directive('flash', () ->
	{
		restrict: 'A'
		link: () ->
			alert('I am working faster!')
	}
)