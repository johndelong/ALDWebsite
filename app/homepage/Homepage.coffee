module = angular.module 'ALDWebsite.homepage', [
  'ui.router'
  'sticky'
]

module.config ($stateProvider) ->
  $stateProvider
    .state 'home',
      url: '/'
      templateUrl: '/homepage/homepage.html'
      controller: 'HomepageCtrl as home'
