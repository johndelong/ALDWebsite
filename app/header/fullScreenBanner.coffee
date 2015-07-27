angular.module('ALDWebsite')
.directive 'fullScreenBanner', ->
  restrict: 'E'
  scope:
    title: '@'
    titleDesc: '@'
    img: '='
  templateUrl: "/header/full-screen-banner.html"