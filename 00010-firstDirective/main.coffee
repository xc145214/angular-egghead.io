window.app = angular.module('superhero', [])
app = window.app

app.directive('superman', () ->
	{
		restrict: "E",
		template: "<div>Here I am to save the day</div>"
	}
)