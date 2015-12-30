angular.module('aldwebsite.about')
.controller 'AboutCtrl', ($scope, uiGmapGoogleMapApi) ->

  @value = "About"

  uiGmapGoogleMapApi.then (maps) ->
    $scope.map = {
      center: { latitude: 43.05313350000001, longitude: -85.596386 },
      zoom: 12
    }
    $scope.options = {scrollwheel: false}
    $scope.coordsUpdates = 0
    $scope.dynamicMoveCtr = 0

    $scope.marker =
      id: 0
      coords:
        latitude: 43.05313350000001
        longitude: -85.596386
      options:
        draggable: false

  return this
