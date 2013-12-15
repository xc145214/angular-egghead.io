window.app = angular.module('app', [])
app = window.app

app.directive('dumbPassword', () ->
	validElement = angular.element('<div>{{model.input}}</div>')

	this.link = (scope) ->
		scope.$watch('model.input', (value) ->
			if value is 'password'
				validElement.toggleClass('alert-box alert')
			return
		)
		return

	{
		restrict: 'E'
		replace: true
		template: '<div>\n\t<input type="text" ng-model="model.input"/>\n</div>'
		compile: (tElem) ->
			tElem.append(validElement)
			return link
	}
)

