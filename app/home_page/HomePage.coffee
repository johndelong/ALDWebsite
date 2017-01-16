angular.module 'aldwebsite.homePage', [
  'ui.router'
  'slick'
]

angular.module('aldwebsite.homePage').config ($stateProvider) ->
  $stateProvider
    .state 'homePage',
      url: '/'
      templateUrl: '/home_page/home_page.html'
      controller: 'HomePageCtrl as homePage'
