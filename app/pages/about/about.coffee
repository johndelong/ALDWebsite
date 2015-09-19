module = angular.module 'ALDWebsite.about', [
  'ui.router'
  'uiGmapgoogle-maps'
]

module.config ($stateProvider) ->
  $stateProvider
    .state 'about',
      url: '/about'
      templateUrl: '/pages/about/about.html'
      controller: 'AboutCtrl as aboutController'
      
module.config (uiGmapGoogleMapApiProvider) ->
    uiGmapGoogleMapApiProvider
      .configure v: '3.20', 
        libraries: 'weather,geometry,visualization'
