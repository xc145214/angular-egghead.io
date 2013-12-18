window.app = angular.module('app', ['ngRoute'])
app = window.app

# we can set-up the provider outside of the app.config() call
# this allows us to configure the provider in the app.config()
# rather than creating it as we do in some examples below
#
# setting up the provider in the fashion allows us to set-up
# configuration functions such at setType()
app.provider('game', () ->
	type = ''
	{
		setType: (value) ->
			type = value
			return
		# this is called when injection occurs to provide the object
		$get: () ->
			{
				title: type + 'Craft'
			}
	}
)

# then in the app.config() we can configure our provider
# prior to its injection
app.config((gameProvider) ->
	gameProvider.setType('Puzzle')
)

# create a factory with a name that returns an object
# some people refer to factories as providers because
# this is just an alias for the above
#app.factory('game', () ->
#	{
#		title: 'StarCraft'
#	}
#)

# in the app.config we can set-up providers by injecting
# the $provider and then calling the various methods
# available to create the providers
#app.config(($provide) ->
#	# the app.factory() is a alias for this function
#	# which adds a provider to the provide object
#	$provide.factory('game', () ->
#		{
#			title: 'StarCraft'
#		}
#	)
#
#
#	# this is the most generic provider which does the same thing
# # as app.factory() and $provide.factory()
#	$provide.provider('game', () ->
#		{
#			# this is called when injection occurs to provide the object
#			$get: () ->
#				{
#					title: 'StarCraft'
#				}
#		}
#	)
#	return
#)

# the object which is returned from a provider/factory can
# then be injected
app.controller('AppCtrl', ($scope, game) ->
	$scope.title = game.title
)



