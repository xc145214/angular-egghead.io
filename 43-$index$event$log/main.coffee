window.app = angular.module('app', ['ngRoute'])
app = window.app

# here we can turn off the debug logging by configuring
# the $logProvider by uncommenting
app.config(($logProvider) ->
	#$logProvider.debugEnabled(false)
)

# this allows us to pass the logger onto the $rootScope
# this makes the logger available anywhere in our HTML
app.run(($rootScope, $log) ->
	$rootScope.$log = $log
)

