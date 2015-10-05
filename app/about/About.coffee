angular.module 'aldwebsite.about', [
  'ui.router'
]

angular.module('aldwebsite.about').config ($stateProvider) ->
  $stateProvider
    .state 'about',
      url: '/about'
      templateUrl: '/about/about.html'
      controller: 'AboutCtrl as about'
