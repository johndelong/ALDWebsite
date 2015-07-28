# Declare the main module and dependencies
module = angular.module('ALDWebsite', [
  # External modules
  'ui.router'
  'angular-loading-bar'

  # Our modules
  'ALDWebsite.homepage'
  'ALDWebsite.contact'
  'ALDWebsite.about'
])


module.config ($locationProvider) ->
  $locationProvider.html5Mode(enabled: true, requireBase: false)

# For any unmatched url, route here
module.config ($urlRouterProvider) ->
  $urlRouterProvider.otherwise('/')

module.config ($httpProvider) ->
  $httpProvider.defaults.withCredentials = true
  $httpProvider.defaults.headers.delete = {'Content-Type': 'application/json'}

module.config (cfpLoadingBarProvider) ->
  cfpLoadingBarProvider.includeSpinner = false
  cfpLoadingBarProvider.latencyThreshold = 250

# We have to have $state here, to avoid this bug:
# https://github.com/angular-ui/ui-router/issues/679#issuecomment-31116942
module.run ($state, $rootScope) ->

  # UI Router silently swallows errors on resolve. This exposes them.
  $rootScope.$on '$stateChangeError',
  (event, toState, toParams, fromState, fromParams, error) ->
    throw error
