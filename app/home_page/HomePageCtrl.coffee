angular.module('aldwebsite.homePage')
.controller 'HomePageCtrl', ($scope) ->

  @value = "Home Page"

  $scope.breakpoints = [
      breakpoint: 1024
      settings:
        slidesToShow: 2
    ,
      breakpoint: 700
      settings:
        slidesToShow: 1
    ]

  return this
