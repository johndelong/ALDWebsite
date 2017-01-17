angular.module('aldwebsite.homePage')
.controller 'HomePageCtrl', ($scope) ->

  @value = "Home Page"

  $scope.breakpoints = [
      breakpoint: 1024
      settings:
        slidesToShow: 2
    ,
      breakpoint: 640
      settings:
        slidesToShow: 1
    ]

  return this
