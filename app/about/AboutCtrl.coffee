angular.module('aldwebsite.about')
.controller 'AboutCtrl', ($scope, uiGmapGoogleMapApi) ->

  @value = "About"

# http://maps.google.com/maps/api/geocode/json?address=4551+Cascade+Rd+SE+Grand+Rapids+MI+49546&sensor=false
  uiGmapGoogleMapApi.then (maps) ->
    $scope.map = {
      center: { latitude: 42.9465147, longitude: -85.55675529999999 },
      zoom: 18
    }
    $scope.options = {scrollwheel: false}
    $scope.coordsUpdates = 0
    $scope.dynamicMoveCtr = 0

    $scope.marker =
      id: 0
      coords:
        latitude: 42.9465147
        longitude: -85.55675529999999
      options:
        draggable: false

  return this
