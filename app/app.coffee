# Declare the main module and dependencies
angular.module('aldwebsite', [
  # External modules
  'ui.router'
  'angular-loading-bar'

  # MODULE LIST AUTOGEN BELOW THIS LINE
  'aldwebsite.about'
  'aldwebsite.contactMe'
  'aldwebsite.about'
  'aldwebsite.homePage'
])


angular.module('aldwebsite').config ($locationProvider) ->
  $locationProvider.html5Mode(enabled: true, requireBase: false)

angular.module('aldwebsite').config ($urlRouterProvider) ->
  $urlRouterProvider.otherwise('/')

angular.module('aldwebsite').config ($httpProvider) ->
  $httpProvider.defaults.withCredentials = false
  $httpProvider.defaults.headers.delete = {'Content-Type': 'application/json'}

angular.module('aldwebsite').config (cfpLoadingBarProvider) ->
  cfpLoadingBarProvider.includeSpinner = false
  cfpLoadingBarProvider.latencyThreshold = 250

# We have to have $state here, to avoid this bug:
# https://github.com/angular-ui/ui-router/issues/679#issuecomment-31116942
angular.module('aldwebsite').run ($state, $rootScope) ->

  # UI Router silently swallows errors on resolve. This exposes them.
  $rootScope.$on '$stateChangeError',
  (event, toState, toParams, fromState, fromParams, error) ->
    throw error
