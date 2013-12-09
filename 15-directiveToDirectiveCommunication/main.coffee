window.app = angular.module('superApp', [])
app = window.app

app.directive('superhero', () ->
	{
		restrict: 'E'

		scope: {}

		controller: ($scope) ->
			$scope.abilities = []
			this.addStrength = () ->
				$scope.abilities.push("strength")
				return
			this.addSpeed = () ->
				$scope.abilities.push("speed")
				return
			this.addFlight = () ->
				$scope.abilities.push("flight")
				return
			return

		link: (scope, element) ->
			element.addClass('button')
			element.bind('mouseenter', () ->
				console.log(scope.abilities)
				return
			)
			return
	}
)

app.directive('strength', ()->
	{
		require: 'superhero',
		link: (scope, element, attrs, superheroCtrl) ->
			superheroCtrl.addStrength()
			return
	}
)

app.directive('speed', ()->
	{
		require: 'superhero',
		link: (scope, element, attrs, superheroCtrl) ->
			superheroCtrl.addSpeed()
			return
	}
)

app.directive('flight', ()->
	{
		require: 'superhero',
		link: (scope, element, attrs, superheroCtrl) ->
			superheroCtrl.addFlight()
			return
	}
)
