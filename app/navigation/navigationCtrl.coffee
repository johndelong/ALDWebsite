app = angular.module('aldwebsite')
app.controller 'NavigationCtrl', ($scope, $window) ->

  # Variable definitions
  $scope.width = $window.innerWidth
  $scope.showMenuIcon = false
  ngWindow = angular.element($window)
  @value = "Home Page"
  $scope.scrollPos = 0

  @getHeaderBackground = ->
    if $scope.scrollPos > 0
      return 'show-background'
    else
      return 'hide-background'

  ngWindow.bind 'scroll', ->
    $scope.scrollPos = ngWindow.scrollTop()
    $scope.$digest()

  # Watch window size
  ngWindow.bind 'resize', ->
    $scope.width = $window.innerWidth

    if $scope.width > 650
      $scope.showMenuIcon = false
    else
      $scope.showMenuIcon = true

    # manuall $digest required as resize event
    # is outside of angular
    $scope.$digest()

  # -------------------------------------------------------
  # MAIN
  # -------------------------------------------------------

  return this
