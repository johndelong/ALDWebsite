# Declare the main module and dependencies
appModule = angular.module('aldwebsite', [
  # Internal Files
  'aldwebsite.config'

  # External modules
  'ui.router'
  'angular-loading-bar'
  'slick'
  'angulartics'
  'angulartics.google.analytics'

  # MODULE LIST AUTOGEN BELOW THIS LINE
  'aldwebsite.about'
  'aldwebsite.contactMe'
  'aldwebsite.about'
  'aldwebsite.homePage'
])

appModule.config ($locationProvider) ->
  $locationProvider.html5Mode(enabled: true, requireBase: false)

appModule.config ($urlRouterProvider) ->
  $urlRouterProvider.otherwise('/')

appModule.config ($httpProvider) ->
  $httpProvider.defaults.withCredentials = false
  $httpProvider.defaults.headers.delete = {'Content-Type': 'application/json'}

appModule.config (cfpLoadingBarProvider) ->
  cfpLoadingBarProvider.includeSpinner = false
  cfpLoadingBarProvider.latencyThreshold = 250

# We have to have $state here, to avoid this bug:
# https://github.com/angular-ui/ui-router/issues/679#issuecomment-31116942
appModule.run ($state, $rootScope, config) ->
  # UI Router silently swallows errors on resolve. This exposes them.
  $rootScope.$on '$stateChangeError',
  (event, toState, toParams, fromState, fromParams, error) ->
    throw error
