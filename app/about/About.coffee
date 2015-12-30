angular.module 'aldwebsite.about', [
  'ui.router'
  'uiGmapgoogle-maps'
]

angular.module('aldwebsite.about').config ($stateProvider) ->
  $stateProvider
    .state 'about',
      url: '/about'
      templateUrl: '/about/about.html'
      controller: 'AboutCtrl as about'

angular.module('aldwebsite.about').config (uiGmapGoogleMapApiProvider) ->
  uiGmapGoogleMapApiProvider
    .configure v: '3.20',
      ibraries: 'weather,geometry,visualization'
